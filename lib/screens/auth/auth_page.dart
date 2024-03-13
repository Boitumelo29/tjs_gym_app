import 'package:flutter/material.dart';
import 'package:tjs_gym_app/screens/login/login_screen.dart';
import 'package:tjs_gym_app/screens/login/register_screen.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showLoginPage = true;

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTap: () {
        togglePages();
      });
    } else {
      return RegisterPage(onTap: () {
        togglePages();
      });
    }
  }
}
