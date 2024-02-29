import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_login/features/login/domain/usecase/auth_usecase.dart';
import 'package:simple_login/features/login/presentation/bloc/auth_event.dart';
import 'package:simple_login/features/login/presentation/bloc/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthUsecase authUsecase;
  AuthBloc({required this.authUsecase}) : super(AuthInitial()) {
    on<LoginEvent>(
      (event, emit) async {
        try {
          emit(AuthLoading());
          final user = await authUsecase.signin(event.email, event.password);
          if (user) {
            emit(AuthAuthenticated());
          } else {
            emit(AuthError(errorMessage: "Incorrect email or password"));
          }
        } catch (e) {
          emit(AuthError(errorMessage: e.toString()));
        }
      },
    );

   
  }
}
