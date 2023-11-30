import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:piano_ls/src/constants/Colors.dart';
import 'package:piano_ls/src/constants/image_strings.dart';
import 'package:piano_ls/src/constants/sizes.dart';
import 'package:piano_ls/src/constants/texts.dart';
import 'package:piano_ls/src/features/authentication/controllers/splash_screen_controller.dart';

class SpalashScreen extends StatelessWidget {
  SpalashScreen({Key? key}) : super(key: key);

  final spalashScreenController = Get.put(SpalashScreenController());

  @override
  Widget build(BuildContext context) {
    spalashScreenController.startAnimation();
    return Scaffold(
      body: Stack(children: [
        Obx(()=> AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: spalashScreenController.animate.value ? 0 : -30,
              left: spalashScreenController.animate.value ? 0 : -30,
              child: const Image(image: AssetImage(tSplashImage))),
        ),
        Obx(()=> AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            top: 80,
            left: spalashScreenController.animate.value ? 10 : -80,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 1500),
              opacity: spalashScreenController.animate.value ? 1 : 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tAppName,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(
                    tAppTagLine,
                    style: Theme.of(context).textTheme.headlineMedium,
                  )
                ],
              ),
            ),
          ),
        ),
        Obx(()=> AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: spalashScreenController.animate.value ? 100 : 0,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: spalashScreenController.animate.value ? 1 : 0,
                child: const Image(image: AssetImage(tSplashImage)),
              )),
        ),
        Obx(()=> AnimatedPositioned(
            duration: const Duration(milliseconds: 2400),
            bottom: spalashScreenController.animate.value ? 60 : 0,
            right: tDefaultSize,
            child: Container(
              width: tSplashContainerSize,
              height: tSplashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: tPrimaryColor,
              ),
            ),
          ),
        )
      ]),
    );
  }
}
