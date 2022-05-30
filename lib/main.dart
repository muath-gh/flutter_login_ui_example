import 'package:flutter/material.dart';
import 'package:login_screen_example/home_screen.dart';
import 'package:login_screen_example/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

late String accessToken;
void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  accessToken = sharedPreferences.getString("access_token") ?? "";
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "OpenSans-Regular"),
      debugShowCheckedModeBanner: false,
      home: accessToken.isNotEmpty ? HomeScreen() : LoginScreen(),
    );
  }
}
