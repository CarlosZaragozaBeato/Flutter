import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text("Login Page"),
      ),
      body: const Center(
        child: Text(
          "Login Page",
          style: TextStyle(fontSize: 50.0),
        ),
      ),
    );
  }
}