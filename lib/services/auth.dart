// ignore_for_file: file_names
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthInterface {
  User? get currentUser;
  Stream<User?> authStateChanges();
  Future<User?> signInAnonymously();
  Future<void> signOut();
}

class Auth implements AuthInterface {
  final _firebaseAuthInstance = FirebaseAuth.instance;

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
  Future<void> signOut() async => await _firebaseAuthInstance.signOut();
}
