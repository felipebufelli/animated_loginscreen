import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;

  StaggerAnimation({@required this.controller})
    : checkMargin = Tween(begin: 200.0 , end: 70.0).animate(CurvedAnimation(
        parent: controller,
        curve: Interval(0.5, 1.0, curve: Curves.decelerate),
      ));
  final Animation<double> checkMargin;

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: checkMargin.value),
          child: Image.asset(
            "images/check.png",
            width: 150.0,
            height: 150.0,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller, 
      builder: _buildAnimation,
    );
  }
}
