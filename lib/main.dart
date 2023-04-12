import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/splash/presentation/splash_screen.dart';

void main() {
  runApp(const FruitsMarket());
}

class FruitsMarket extends StatelessWidget {
  const FruitsMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
