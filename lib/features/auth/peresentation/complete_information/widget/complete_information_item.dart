import 'package:flutter/material.dart';
import 'package:foods_app/core/widgets/custom_text_field.dart';
import 'package:foods_app/core/widgets/space_widget.dart';

class CompleteInformationItem extends StatelessWidget {
  const CompleteInformationItem(
      {Key? key, required this.text, this.inputType, this.maxLines})
      : super(key: key);
  final String text;
  final TextInputType? inputType;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            color: Color(0xff0c0b0b),
            fontWeight: FontWeight.w600,
            height: 1.5625,
          ),
          textHeightBehavior:
              const TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.center,
        ),
        const VerticalSpaceWidget(value: 2),
        CustomTextField(
          maxLines: maxLines,
          inputType: inputType,
        )
      ],
    );
  }
}
