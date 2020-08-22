import 'dart:async';

import 'package:flutter/material.dart';
import 'package:last_pass/src/widgets/lastPass_title.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    startTimer(context);
    return Scaffold(
      body: LastPassTitle(height: screen.height, width: screen.width),
    );
  }

  void startTimer(BuildContext context) {
    new Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, 'onboarding');
    });
  }
}
