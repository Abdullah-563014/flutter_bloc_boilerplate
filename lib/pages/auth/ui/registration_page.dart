import 'package:flutter/material.dart';




class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Registration Page"),
      ),
      body: Center(
        child: Text("This is registration page"),
      ),
    );
  }
}
