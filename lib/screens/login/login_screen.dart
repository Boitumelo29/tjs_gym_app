import 'package:flutter/material.dart';
import 'package:tjs_gym_app/custom_widget/buttons/long_button.dart';
import 'package:tjs_gym_app/custom_widget/textfields/long_textfield.dart';
import 'package:tjs_gym_app/utils/strings.dart';

class LoginPage extends StatelessWidget {
  final void Function()? onTap;

  LoginPage({super.key, required this.onTap});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.shop,
                size: 80,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                Strings.powered,
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 25,
              ),
              MyTextField(
                  hintText: Strings.emailUpper,
                  obscureText: true,
                  controller: emailController),
              const SizedBox(
                height: 15,
              ),
              MyTextField(
                  hintText: Strings.passwordUpper,
                  obscureText: true,
                  controller: passwordController),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      child: Text(
                    Strings.forgotPassword,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
                  ))
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              MyButton(
                text: Strings.login,
                onTap: () {
                  print("I have been tapped");
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    Strings.doYouHaveAnAccount,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                  GestureDetector(
                      onTap: onTap,
                      child: Text(
                        Strings.register,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
