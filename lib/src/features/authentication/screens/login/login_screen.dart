import 'package:flutter/material.dart';
import 'package:piano_ls/src/common/common_widgets/forms/form_header_widget.dart';
import 'package:piano_ls/src/constants/image_strings.dart';
import 'package:piano_ls/src/constants/sizes.dart';
import 'package:piano_ls/src/constants/texts.dart';
import 'package:piano_ls/src/features/authentication/screens/login/widgets/login_footer_widget.dart';
import 'package:piano_ls/src/features/authentication/screens/login/widgets/login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
              child: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormHeaderWidget(title: tLoginTitle,image: loginScreenImage,subTitle: tLoginSubTitle),
            LoginForm(),
            LoginFooterWidget()
          ],
        ),
      ))),
    );
  }
}
