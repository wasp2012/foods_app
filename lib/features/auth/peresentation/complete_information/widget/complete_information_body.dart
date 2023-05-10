import 'package:flutter/material.dart';
import 'package:foods_app/core/widgets/custom_button_widget.dart';
import 'package:foods_app/core/widgets/space_widget.dart';

import 'complete_information_item.dart';

class CompleteInformationBody extends StatelessWidget {
  const CompleteInformationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const VerticalSpaceWidget(value: 10),
          const CompleteInformationItem(text: 'Enter your name'),
          const VerticalSpaceWidget(value: 2),
          const CompleteInformationItem(text: 'Enter your phone number'),
          const VerticalSpaceWidget(value: 2),
          const CompleteInformationItem(
            text: 'Enter your address',
            maxLines: 5,
          ),
          const VerticalSpaceWidget(value: 5),
          CustomButtonWidget(text: 'login', onTap: () {})
        ],
      ),
    );
  }
}
