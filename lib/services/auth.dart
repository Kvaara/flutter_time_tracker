// ignore_for_file: file_names
import 'package:firebase_auth/firebase_auth.dart';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

abstract class AuthInterface {
  User? get currentUser;
  Stream<User?> authStateChanges();
  Future<User?> signInAnonymously();
  Future<User> signInWithGoogle();
  Future<User> signInWithFacebook();
  Future<void> signOut();
}

class Auth implements AuthInterface {
  final _firebaseAuthInstance = FirebaseAuth.instance;
  final _googleSignIn = GoogleSignIn();
  final _faceBookSignIn = FacebookAuth.instance;

  @override
  Stream<User?> authStateChanges() => _firebaseAuthInstance.authStateChanges();

  @override
  User? get currentUser => _firebaseAuthInstance.currentUser;

  @override
  Future<User?> signInAnonymously() async {
    final userCredential = await _firebaseAuthInstance.signInAnonymously();
    return userCredential.user;
  }

  @override
  Future<User> signInWithGoogle() async {
    final googleUser = await _googleSignIn.signIn();
    if (googleUser != null) {
      final googleAuth = await googleUser.authentication;
      if (googleAuth.idToken != null) {
        final userCredential = await _firebaseAuthInstance
            .signInWithCredential(GoogleAuthProvider.credential(
          idToken: googleAuth.idToken,
          accessToken: googleAuth.accessToken,
        ));
        return userCredential.user!;
      } else {
        throw FirebaseAuthException(
          code: "ERROR_MISSING_GOOGLE_ID_TOKEN",
          message: "Missing the Google ID token.",
        );
      }
    } else {
      throw FirebaseAuthException(
        code: "ERROR_ABORTED_BY_USER",
        message: "Sign in aborted by the user.",
      );
    }
  }

  @override
  Future<User> signInWithFacebook() async {
    final LoginResult facebookUser = await _faceBookSignIn.login();
    if (facebookUser.status == LoginStatus.success) {
      final String accessToken = facebookUser.accessToken!.token;
      final userCredential = await _firebaseAuthInstance
          .signInWithCredential(FacebookAuthProvider.credential(accessToken));
      return userCredential.user!;
    } else {
      throw Exception(facebookUser.status);
    }
  }

  @override
  Future<void> signOut() async {
    await _googleSignIn.signOut();
    await _firebaseAuthInstance.signOut();
    await _faceBookSignIn.logOut();
  }
}
