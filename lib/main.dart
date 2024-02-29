import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_login/core/routes.dart';
import 'package:simple_login/features/login/data/dataprovider/auth_data_provider.dart';
import 'package:simple_login/features/login/data/repository/auth_repo_impl.dart';
import 'package:simple_login/features/login/domain/usecase/auth_usecase.dart';
import 'package:simple_login/features/login/presentation/bloc/auth_bloc.dart';
import 'package:simple_login/features/login/presentation/screens/login_page.dart';
import 'package:simple_login/firebase_options.dart';

void main() async {
   
     WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final AppRouter appRouter = AppRouter();
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
            create: (_) => AuthBloc(
                authUsecase: AuthUsecase(
                    authRepoistory:
                        AuthRepoImpl(authDataProvider: AuthDataProvider()))))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        onGenerateRoute: appRouter.onGeneratedRoute,
        initialRoute: LoginPage.routeName,
      ),
    );
  }
}
