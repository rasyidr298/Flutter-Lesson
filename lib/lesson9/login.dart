import 'package:flutter/material.dart';
import 'package:sample/lesson9/homepage1.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Center(child: TextButton(
        child: Text("Login"),
        onPressed: () {
          navigateToHomePage1(context);
        },
      )),
    );
  }

  void navigateToHomePage1(BuildContext context) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Homepage1Screen()));
  }
}