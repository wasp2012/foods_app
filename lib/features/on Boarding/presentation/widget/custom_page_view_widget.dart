import 'package:flutter/material.dart';
import 'package:foods_app/features/on%20Boarding/presentation/widget/page_view_item_widget.dart';

class CustomPageViewWidget extends StatelessWidget {
  const CustomPageViewWidget({
    Key? key,
    required this.pageController,
  }) : super(key: key);
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        PageViewItemWidget(
          title: 'E Shopping',
          subTitle: 'Explore top organic fruits & grab them',
          image: 'assets/images/onboarding1.png',
        ),
        PageViewItemWidget(
          title: 'E Shopping',
          subTitle: 'Explore top organic fruits & grab them',
          image: 'assets/images/onboarding2.png',
        ),
        PageViewItemWidget(
          title: 'E Shopping',
          subTitle: 'Explore top organic fruits & grab them',
          image: 'assets/images/onboarding3.png',
        ),
      ],
    );
  }
}
