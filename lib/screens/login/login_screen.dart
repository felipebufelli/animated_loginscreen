import 'package:animated_loginscreen/screens/login/widgets/form_container.dart';
import 'package:animated_loginscreen/screens/login/widgets/sign_up_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 70, bottom: 32),
                      child: Image.asset(
                        "images/check.png",
                        width: 150.0,
                        height: 150.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                    FormContainer(),
                    SignUpButton(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}