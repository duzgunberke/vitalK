import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:piano_ls/src/constants/sizes.dart';
import 'package:piano_ls/src/constants/texts.dart';
import 'package:piano_ls/src/features/authentication/controllers/signup_controller.dart';
import 'package:piano_ls/src/features/authentication/screens/forget_password/forget_password_options/forget_password_model_bottom_sheet.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();

    return Form(
        child: Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: tEmail,
                  hintText: tEmail,
                  border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: tFormHeight,
            ),
            TextFormField(
              controller: controller.password,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  labelText: tPassword,
                  hintText: tPassword,
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: null,
                    icon: Icon(Icons.remove_red_eye_sharp),
                  )),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {
                      ForgetPasswordScreen.buildShowModalBottomSheet(context);
                    },
                    child: const Text(tForgetPassword))),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    SignUpController.instance.loginUser(
                        controller.email.text.trim(),
                        controller.password.text.trim());
                  }
                },
                child: Text(tLogin.toUpperCase()),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
