import 'package:flutter/material.dart';
import 'package:foods_app/core/utils/size_config.dart';
import 'package:foods_app/features/on%20Boarding/presentation/on_boarding_screen.dart';
import 'package:get/get.dart';

class SplashScreenBodyWidget extends StatefulWidget {
  const SplashScreenBodyWidget({Key? key}) : super(key: key);

  @override
  _SplashScreenBodyWidgetState createState() => _SplashScreenBodyWidgetState();
}

class _SplashScreenBodyWidgetState extends State<SplashScreenBodyWidget>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;

  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 800));
    fadingAnimation =
        Tween<double>(begin: 0.2, end: 1).animate(animationController!);
    animationController?.repeat(reverse: true);
    goToNextScreen();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  void goToNextScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const OnBoardingScreen(), transition: Transition.fade);
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        const Spacer(),
        FadeTransition(
          opacity: fadingAnimation!,
          child: const Text(
            'Fruit Market',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 51,
              fontWeight: FontWeight.bold,
              color: Color(0xffffffff),
            ),
          ),
        ),
        Image.asset('assets/images/splash_view_image.png'),
      ],
    );
  }
}
