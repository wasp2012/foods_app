import 'package:flutter/material.dart';

class OnBoardingScreenBody extends StatelessWidget {
  const OnBoardingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: MediaQuery.of(context).size.height * 0.1,
          right: 32,
          child: const Text(
            'Skip',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14,
              color: Color(0xff898989),
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
