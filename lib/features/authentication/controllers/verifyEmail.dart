import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:t_store/common/loaders/networkLoader.dart';
import 'package:t_store/common/widgets/succesScreen/succesScreen.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import '../../../data/repositories/authentification_repo.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  @override
  void OnInit() {
    sendEmailVerification1();
    setTimerRedirect();
    super.onInit();
  }

  sendEmailVerification1() async {
    try {
      await AuthentificationRepo.instance.sendEmailVerification();
      TLoaders.successsnackBar(
          title: 'Email Sent',
          message: 'Please Check your inbox and verify your email');
    } catch (e) {
      TLoaders.errorsnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  setTimerRedirect() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      await FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user?.emailVerified ?? false) {
        timer.cancel();
        Get.off(() => SuccesScreen(
            title: TTexts.yourAccountCreatedTitle,
            image: TImages.successfulPaymentIcon,
            onPressed: () => AuthentificationRepo.instance.screenRedirect(),
            subTitle: TTexts.yourAccountCreatedSubTitle));
      }
    });
  }

  checkEmailVerificationStatus() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null && currentUser.emailVerified) {
      Get.off(() => SuccesScreen(
          title: TTexts.yourAccountCreatedTitle,
          image: TImages.successfulPaymentIcon,
          onPressed: () => AuthentificationRepo.instance.screenRedirect(),
          subTitle: TTexts.yourAccountCreatedSubTitle));
    }
  }
}
