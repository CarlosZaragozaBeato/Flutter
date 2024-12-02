import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text("Register Page"),
      ),
      body: const Center(
        child: Text(
          "Register Page",
          style: TextStyle(fontSize: 50.0),
        ),
      ),
    );
  }
}
