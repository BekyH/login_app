import 'package:firebase_auth/firebase_auth.dart';
import 'package:simple_login/features/login/data/dataprovider/auth_data_provider.dart';
import 'package:simple_login/features/login/domain/repository/auth_repo.dart';

class AuthRepoImpl extends AuthRepoistory {
  final AuthDataProvider authDataProvider;
  AuthRepoImpl({required this.authDataProvider});
  @override
  Future<bool> signin(String email, String password) async {
    return await authDataProvider.signInWithEmailAndPassword(email, password);
  }


}
