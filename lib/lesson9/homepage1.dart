import 'package:flutter/material.dart';
import 'package:sample/lesson9/homepage2.dart';

class Homepage1Screen extends StatefulWidget {
  const Homepage1Screen({super.key});

  @override
  State<Homepage1Screen> createState() => _Homepage1ScreenState();
}

class _Homepage1ScreenState extends State<Homepage1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage 1"),
      ),
      body: Center(child: TextButton(
        child: Text("Go To Second Page"),
        onPressed: () {
          navigateToHomePage2(context);
        },
      )),
    );
  }

  void navigateToHomePage2(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Homepage2Screen()));
  }
}