import 'package:flutter/material.dart';
import 'package:foods_app/core/utils/size_config.dart';

import '../../../../core/widgets/space_widget.dart';

class PageViewItemWidget extends StatelessWidget {
  const PageViewItemWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.image,
  }) : super(key: key);
  final String? image;
  final String? title;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpaceWidget(value: 18),
        SizedBox(
          height: SizeConfig.defaultSize! * 20,
          child: Image.asset(image ?? ''),
        ),
        const VerticalSpaceWidget(value: 3),
        Text(
          title ?? '',
          style: const TextStyle(
            fontSize: 20,
            color: Color(0xff2f2e41),
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.left,
        ),
        const VerticalSpaceWidget(value: 1.5),
        Text(
          subTitle ?? '',
          style: const TextStyle(
            fontSize: 15,
            color: Color(0xff78787C),
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
