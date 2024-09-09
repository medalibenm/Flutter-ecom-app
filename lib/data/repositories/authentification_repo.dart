import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:t_store/features/authentication/screens/login/login.dart';
import 'package:t_store/features/authentication/screens/onboarding/onboarding_screen.dart';

class AuthentificationRepo extends GetxController {
  static AuthentificationRepo get instance => Get.find();

  final deviceStorage = GetStorage();

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  void screenRedirect() {
    //? Local Storage
    deviceStorage.writeIfNull('IsFirstTime', true);

    if (kDebugMode) {
      print(deviceStorage.read('IsFirstTime'));
    }

    deviceStorage.read('IsFirstTime') != true
        ? Get.offAll(() => const Login())
        : Get.offAll(() => const OnboardingScreen1());
  }
}
