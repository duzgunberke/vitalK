import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:piano_ls/src/constants/colors.dart';
import 'package:piano_ls/src/constants/image_strings.dart';
import 'package:piano_ls/src/constants/texts.dart';
import 'package:piano_ls/src/features/authentication/models/model_onboarding.dart';
import 'package:piano_ls/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(
        model: OnBoardingModel(
            image: tSplashImage,
            title: tOnBoardingTitle1,
            subTitle: tOnBoardingSubTitle1,
            counterText: tOnBoardingCounter1,
            bgColor: tOnBoardingPage1Color)),
    OnBoardingPageWidget(
        model: OnBoardingModel(
            image: tSplashImage,
            title: tOnBoardingTitle2,
            subTitle: tOnBoardingSubTitle2,
            counterText: tOnBoardingCounter2,
            bgColor: tOnBoardingPage2Color)
            ),
    OnBoardingPageWidget(
        model: OnBoardingModel(
            image: tSplashImage,
            title: tOnBoardingTitle3,
            subTitle: tOnBoardingSubTitle3,
            counterText: tOnBoardingCounter3,
            bgColor: tOnBoardingPage3Color)),
  ];

  void onPageChangedCallback(int activePageIndex) {
    currentPage.value = activePageIndex;
  }

  skip() => controller.jumpToPage(page: 2);

  animateToNextSlide(){
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }
}
