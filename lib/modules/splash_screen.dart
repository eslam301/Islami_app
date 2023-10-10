import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_islami_app/layout/Home_layout.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "splash";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomeLayout.routeName);
    });
    return Scaffold(
      body: Image.asset("Assets/images/Splash_screen.png"),
    );
  }
}
