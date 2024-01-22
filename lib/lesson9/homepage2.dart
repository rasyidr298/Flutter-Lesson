import 'package:flutter/material.dart';
import 'package:sample/lesson9/homepage1.dart';

class Homepage2Screen extends StatefulWidget {
  const Homepage2Screen({super.key});

  @override
  State<Homepage2Screen> createState() => _Homepage2ScreenState();
}

class _Homepage2ScreenState extends State<Homepage2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage 2"),
      ),
      body: Center(child: TextButton(
        child: Text("Back To First Page"),
        onPressed: () {
          navigateToHomePage2(context);
        },
      )),
    );
  }

  void navigateToHomePage2(BuildContext context) {
    Navigator.of(context).pop(MaterialPageRoute(builder: (context) => Homepage1Screen()));
  }
}