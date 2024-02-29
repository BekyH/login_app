import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:simple_login/features/login/domain/repository/auth_repo.dart';

class AuthUsecase {
  final AuthRepoistory authRepoistory;
  AuthUsecase({required this.authRepoistory});
  Future<bool> signin(String email, String password) async {
    return await authRepoistory.signin(email, password);
  }

 
}
