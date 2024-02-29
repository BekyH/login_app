import 'package:flutter/material.dart';
import 'package:simple_login/features/login/presentation/widgets/custom_form_field.dart';
import 'package:simple_login/features/login/presentation/widgets/custombutton.dart';
import 'package:simple_login/themes/text.dart';

class LoginPage extends StatefulWidget {
  static const routeName = "/login_page";
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
   String? emailValidation(String? fieldContent) {
    if (fieldContent == null || fieldContent.isEmpty) {
      return "Please enter you email";
    }
    RegExp emailRegex =
        RegExp(r"^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");

    if (!emailRegex.hasMatch(fieldContent)) {
      return "Please enter a valid email address";
    }
    return null;
  }
   String? passwordValidation(String? fieldContent) {
    if (fieldContent == null || fieldContent.isEmpty) {
      return "Password cannot be empty";
    }
    if (fieldContent.length < 8) {
      return "Password should be at least 8 characters";
    }

    // Check for at least 1 uppercase letter
    if (!RegExp(r'[A-Z]').hasMatch(fieldContent)) {
      return "Password must contain at least 1 uppercase letter";
    }

    // Check for at least 1 lowercase letter
    if (!RegExp(r'[a-z]').hasMatch(fieldContent)) {
      return "Password must contain at least 1 lowercase letter";
    }

    // Check for at least 1 number
    if (!RegExp(r'[0-9]').hasMatch(fieldContent)) {
      return "Password must contain at least 1 number";
    }

    // Check for at least 1 special character
    if (!RegExp(r'[!@#\$%^&*(),.?":{}|<>]').hasMatch(fieldContent)) {
      return "Password must contain at least one special character";
    }

    return null; // Password meets all criteria
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Log In',
            style: BoldText.header2,
          ),
          const SizedBox(
            height: 20,
          ),
           CustomFormField(
            placeholder: 'Email',
            controller: emailController,
          ),
          const SizedBox(
            height: 20,
          ),
           CustomPasswordField(
            placeholder: 'Password',
            controller: passwordController,
          ),
          const SizedBox(
            height: 20,
          ),
          
          TextButton(
            onPressed: () {},
            child: const Text(
              'Forget Password?',
              style: RegularText.body1,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ButtonAction('Log In', onPressed: () {}),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: RichText(
              text: const TextSpan(
                  text: "Don't have account?",
                  style: RegularText.body1,
                  children: [
                    TextSpan(
                      text: ' Sign up',
                      style: MediumText.body1,
                    ),
                  ]),
            ),
          ),
        ],
      ),
    )));
  }
}
