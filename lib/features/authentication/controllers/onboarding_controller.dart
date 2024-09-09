import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:t_store/features/authentication/screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) {
    currentPageIndex.value = index;
  }

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  void nextPage() {
    if (currentPageIndex.value == 2) {
      GetStorage().write('IsFirstTime', false);

      if (kDebugMode) {
        print(GetStorage().read('IsFirstTime'));
      }
      Get.offAll(const Login());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage() {
    GetStorage().write('IsFirstTime', false);
    Get.offAll(const Login());
  }
}
