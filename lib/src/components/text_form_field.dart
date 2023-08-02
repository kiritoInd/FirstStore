import 'package:flutter/material.dart';

class EmailText extends StatefulWidget {
  const EmailText({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _EmailTextState createState() => _EmailTextState();
}

class _EmailTextState extends State<EmailText> {
  final TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    emailController
        .dispose(); // Remember to dispose of the controller when it's no longer needed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: emailController,
      decoration: const InputDecoration(
        hintText: "Enter Your Email",
        labelStyle: TextStyle(
          color: Colors.grey,
          fontSize: 18,
        ),
      ),
    );
  }
}

class PasswordText extends StatefulWidget {
  const PasswordText({super.key});

  @override
  State<PasswordText> createState() => _PasswordTextState();
}

class _PasswordTextState extends State<PasswordText> {
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      controller: passwordController,
      decoration: const InputDecoration(
        hintText: "Enter Your Password",
        labelStyle: TextStyle(
          color: Colors.grey,
          fontSize: 18,
        ),
      ),
    );
  }
}
