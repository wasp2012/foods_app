// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants.dart';

class CustomIndicatorWidget extends StatelessWidget {
  const CustomIndicatorWidget({
    Key? key,
    required this.positionIndex,
  }) : super(key: key);

  final int? positionIndex;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(
        color: Colors.transparent,
        activeColor: kMainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(
            color: kMainColor,
          ),
        ),
      ),
      dotsCount: 3,
      position: positionIndex ?? 0,
    );
  }
}
