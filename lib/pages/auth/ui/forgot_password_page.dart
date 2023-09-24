import 'package:flutter/material.dart';




class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Forgot Password Page"),
      ),
      body: Center(
        child: Text("This is forgot password page"),
      ),
    );
  }
}
