import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:piano_ls/src/features/core/screens/dashboard/microphone.dart';
import 'package:piano_ls/src/utils/theme/theme.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      home: const SpeechScreen(),
    );
  }
}
