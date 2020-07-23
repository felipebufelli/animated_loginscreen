import 'package:animated_loginscreen/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animates Login Screen',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

