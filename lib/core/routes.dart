import 'package:flutter/material.dart';

import 'package:simple_login/features/login/presentation/screens/login_page.dart';

class AppRouter {
  MaterialPageRoute? onGeneratedRoute(RouteSettings routeSettings) {
    // final args = routeSettings.arguments;
    switch (routeSettings.name) {
       case LoginPage.routeName:
        return MaterialPageRoute(
            settings: routeSettings, builder: (_) => const LoginPage());
           
    }
  }
}
