import 'package:flutter/material.dart';
import 'package:login_screen_example/login_screen.dart';

void main(List<String> args) {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "OpenSans-Regular"),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
