import 'package:firebase_auth/firebase_auth.dart';

class AuthDataProvider {
  final FirebaseAuth _firebaseAuth;

  AuthDataProvider({FirebaseAuth? firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  Future<bool> signInWithEmailAndPassword(String email, String password) async {
    try {
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true;
    } catch (e) {
      // Handle error
      print("Error signing in: $e");
      return false;
    }
  }

  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      // Handle error
      print("Error signing out: $e");
    }
  }
}
