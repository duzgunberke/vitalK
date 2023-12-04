
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:piano_ls/src/constants/image_strings.dart';
import 'package:piano_ls/src/constants/sizes.dart';
import 'package:piano_ls/src/constants/texts.dart';
import 'package:piano_ls/src/features/authentication/screens/sign_up/signup_screen.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(height: tFormHeight-20,),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(image: AssetImage(googleLogoImage),width: 20.0,),
            onPressed: (){}, 
            label: const Text(tSignInWithGoogle)
          ),
        ),
        const SizedBox(height: tFormHeight-20,),
        TextButton(
          onPressed: ()=> Get.to(()=>const SignUpScreen()),
          child: Text.rich(
            TextSpan(
              text: tDontHaveAnAccount,
              style: Theme.of(context).textTheme.bodyLarge,
              children: const [
                TextSpan(
                  text: tSignup,
                  style: TextStyle(color: Colors.blue))
              ]
              )))
      ],
    );
  }
}

