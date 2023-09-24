import 'package:flutter/material.dart';




class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Home Page"),
      ),
      body: Center(
        child: Text("This is main page"),
      ),
    );
  }
}
