import 'package:flutter/material.dart';

import '../reusables.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        title: const Text("Login Page"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 300, 30, 0),
          child: Column(
            children: [
              reusableTextField(
                "Username",
                Icons.person,
                false,
                username,
              ),
              const SizedBox(
                height: 30,
              ),
              reusableTextField(
                "Username",
                Icons.lock_outline,
                false,
                password,
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 30,
              ),
              signInSignUpButton("Login", context, () {}),
            ],
          ),
        ),
      ),
    );
  }
}
