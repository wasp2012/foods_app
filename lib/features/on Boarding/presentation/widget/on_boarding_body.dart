import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:foods_app/core/constants.dart';
import 'package:foods_app/core/widgets/custom_button_widget.dart';
import 'package:get/get.dart';

import '../../../../core/utils/size_config.dart';
import '../../../auth/peresentation/login/login_view.dart';
import 'custom_indicator_widget.dart';
import 'custom_page_view_widget.dart';

class OnBoardingScreenBody extends StatefulWidget {
  const OnBoardingScreenBody({super.key});

  @override
  State<OnBoardingScreenBody> createState() => _OnBoardingScreenBodyState();
}

class _OnBoardingScreenBodyState extends State<OnBoardingScreenBody> {
  PageController? pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0)
      ..addListener(
        () {
          setState(
            () {},
          );
        },
      );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageViewWidget(pageController: pageController!),
        Positioned(
          left: 0,
          right: 0,
          bottom: SizeConfig.defaultSize! * 23,
          child: CustomIndicatorWidget(
            positionIndex:
                pageController!.hasClients ? pageController?.page?.toInt() : 0,
          ),
        ),
        Visibility(
          visible: pageController!.hasClients
              ? pageController?.page == 2
                  ? false
                  : true
              : true,
          child: Positioned(
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
        ),
        Positioned(
          left: SizeConfig.defaultSize! * 10,
          right: SizeConfig.defaultSize! * 10,
          bottom: SizeConfig.defaultSize! * 10,
          child: CustomButtonWidget(
            onTap: () {
              if (pageController!.page! < 2) {
                pageController?.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                );
              } else {
                Get.to(
                  () => const LoginView(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(
                    milliseconds: 500,
                  ),
                );
              }
            },
            text: pageController!.hasClients
                ? pageController?.page == 2
                    ? 'Get Started!'
                    : 'Next'
                : 'Next',
          ),
        ),
      ],
    );
  }
}
