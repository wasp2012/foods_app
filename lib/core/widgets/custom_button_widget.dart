import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text(
          'Next',
          style: TextStyle(
             fontSize: 14,
            color: Color(0xffffffff),
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.left,
        ), 
      ), 
    );
  }
}
