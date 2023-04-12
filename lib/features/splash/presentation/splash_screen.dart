import 'package:flutter/material.dart';
import 'package:foods_app/features/splash/presentation/widget/splash_screen_body_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff69a03a),
      body: SplashScreenBodyWidget(),
    );
  }
}
