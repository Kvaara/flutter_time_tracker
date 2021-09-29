// ignore_for_file: file_names
import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final _firebaseAuthInstance = FirebaseAuth.instance;

  User? get currentUser => _firebaseAuthInstance.currentUser;

  Future<User?> signInAnonymously() async {
    final userCredential = await _firebaseAuthInstance.signInAnonymously();
    return userCredential.user;
  }

  Future<void> signOut() async => await _firebaseAuthInstance.signOut();
}
