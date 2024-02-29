import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepoistory {
  Future<bool> signin(String email, String password);

}
