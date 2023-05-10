import 'package:flutter/material.dart';
import 'package:foods_app/core/utils/size_config.dart';

class HorizintalSpaceWidget extends StatelessWidget {
  const HorizintalSpaceWidget({Key? key, this.value}) : super(key: key);
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize! * value!,
    );
  }
}

class VerticalSpaceWidget extends StatelessWidget {
  const VerticalSpaceWidget({Key? key, this.value}) : super(key: key);
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * value!,
    );
  }
}
