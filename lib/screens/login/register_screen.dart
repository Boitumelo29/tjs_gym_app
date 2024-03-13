import 'package:flutter/material.dart';
import 'package:tjs_gym_app/custom_widget/buttons/long_button.dart';
import 'package:tjs_gym_app/custom_widget/textfields/long_textfield.dart';

class RegisterPage extends StatelessWidget {
  final void Function()? onTap;

  RegisterPage({super.key, required this.onTap});

  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();

  void register() {}

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
                Icons.person_add,
                size: 80,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'BudgetBreeze',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 25,
              ),
              MyTextField(
                  hintText: 'Username',
                  obscureText: false,
                  controller: userNameController),
              const SizedBox(
                height: 10,
              ),
              MyTextField(
                  hintText: 'Email',
                  obscureText: false,
                  controller: emailController),
              const SizedBox(
                height: 10,
              ),
              MyTextField(
                  hintText: 'Password',
                  obscureText: true,
                  controller: passwordConfirmController),
              const SizedBox(
                height: 10,
              ),
              MyTextField(
                  hintText: 'Confirm Password',
                  obscureText: true,
                  controller: passwordController),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: onTap,
                      child: Text(
                        'Already Have an account?',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary),
                      ))
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              MyButton(onTap: register, text: "Register"),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
