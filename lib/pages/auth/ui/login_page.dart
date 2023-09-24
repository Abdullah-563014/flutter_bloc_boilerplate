import 'package:flutter/material.dart';



class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("This is login page"),
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, "/main"),
              child: Text("Goto Main Page"),
          )
        ],
      ),
    );
  }
}
