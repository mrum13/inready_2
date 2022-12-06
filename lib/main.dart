import 'package:flutter/material.dart';
import 'package:inready_2/home_page.dart';
import 'package:inready_2/login_page.dart';
import 'package:inready_2/regist_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'login': (context) => const LoginPage(),
        'regist': (context) => const RegistPage(),
        'home': (context) => const HomePage(),
      },
      initialRoute: 'login',
    );
  }
}
