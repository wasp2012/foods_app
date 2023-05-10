import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foods_app/core/utils/size_config.dart';
import 'package:foods_app/core/widgets/space_widget.dart';
import 'package:get/get.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/widgets/custom_button_widget.dart';
import '../../../data/repo/auth_repo_impl.dart';
import '../../complete_information/complete_information_view.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpaceWidget(
          value: 10,
        ),
        SizedBox(
          height: SizeConfig.defaultSize! * 17,
          child: Image.asset(kLogoImage),
        ),
        const Text.rich(
          TextSpan(
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 51,
              color: Color(0xff69a03a),
            ),
            children: [
              TextSpan(
                text: 'F',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              TextSpan(
                text: 'ruit Market',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        const Expanded(child: SizedBox()),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CustomButtonWithIcon(
                  onTap: () async {
                    await AuthRepositoryImplementation().loginWithGoogle();
                  },
                  color: const Color(0xFFdb3236),
                  iconData: FontAwesomeIcons.googlePlusG,
                  text: 'Log in with',
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CustomButtonWithIcon(
                  onTap: () => Get.to(() => const CompleteInformationView(),
                      duration: const Duration(milliseconds: 500),
                      transition: Transition.rightToLeft),
                  color: const Color(0xFF4267B2),
                  iconData: FontAwesomeIcons.facebookF,
                  text: 'Log in with ',
                ),
              ),
            ),
          ],
        ),
        const Expanded(child: SizedBox()),
      ],
    );
  }
}
