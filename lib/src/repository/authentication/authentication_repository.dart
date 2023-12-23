import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:piano_ls/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:piano_ls/src/features/core/screens/dashboard/dashboard.dart';
import 'package:piano_ls/src/features/core/screens/dashboard/microphone.dart';
import 'package:piano_ls/src/repository/authentication/exceptions/signup_email_password_failure.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream((_auth.userChanges()));
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const WelcomeScreen())
        : Get.offAll(() => const SpeechScreen());
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => const SpeechScreen())
          : Get.to(() => const WelcomeScreen());
    } on FirebaseException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTİON - ${ex.message}');
      throw ex;
    } catch (_) {
      const ex = SignUpWithEmailAndPasswordFailure();
      print('EXCEPTİON - ${ex.message}');
      throw ex;
    }
  }

  Future<void> loginWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseException catch (e) {
    } catch (_) {}
  }

  Future<void> logout() async => await _auth.signOut();
}
