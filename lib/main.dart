import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:piano_ls/firebase_options.dart';
import 'package:piano_ls/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:piano_ls/src/features/core/screens/dashboard/microphone.dart';
import 'package:piano_ls/src/repository/authentication/authentication_repository.dart';
import 'package:piano_ls/src/utils/theme/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));
  runApp(const App());
}

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
      home: const SplashScreen(),
    );
  }
}
