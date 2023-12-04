import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:piano_ls/src/common/common_widgets/forms/form_header_widget.dart';
import 'package:piano_ls/src/constants/Colors.dart';
import 'package:piano_ls/src/constants/image_strings.dart';
import 'package:piano_ls/src/constants/sizes.dart';
import 'package:piano_ls/src/constants/texts.dart';
import 'package:piano_ls/src/features/authentication/screens/sign_up/widgets/signup_footer_widget.dart';
import 'package:piano_ls/src/features/authentication/screens/sign_up/widgets/signup_form.widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: const Column(
              children: [
                FormHeaderWidget(
                  image: loginScreenImage, 
                  subTitle: tSignUpSubTitle, 
                  title: tSignUpTitle,
                ),
                SignUpFormWidget(),
                SignUpFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

