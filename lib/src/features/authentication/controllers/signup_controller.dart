import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:piano_ls/src/repository/authentication/authentication_repository.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  void registerUser(String email, String password) {
    AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password);
  }

  void loginUser(String email, String password) {
    AuthenticationRepository.instance
        .loginWithEmailAndPassword(email, password);
  }
}
