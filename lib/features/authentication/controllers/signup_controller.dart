import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:t_store/common/loaders/networkLoader.dart';
import 'package:t_store/data/repositories/authentification_repo.dart';
import 'package:t_store/data/user/user_repo.dart';
import 'package:t_store/features/authentication/models/user_model.dart';
import 'package:t_store/features/authentication/screens/signup/verifyEmail.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/helpers/network_manager.dart';
import 'package:t_store/utils/popups/fullScreenLoader.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  //? Variables
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final firstname = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormkey = GlobalKey<FormState>();

  //? SIGNUP
  Future<void> signup() async {
    try {
      //Start Loading
      TFullScreenLoader.openLoadingDialog(
          'We are processing your information...', TImages.animalIcon);
      // verify internet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // form valiation
      if (!signupFormkey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }

      if (!privacyPolicy.value) {
        TLoaders.warningsnackBar(
            title: 'Accept Privacy Policy',
            message:
                'In order to create account, you must have to read and accept the Privacy Policy & Terms of use');
        TFullScreenLoader.stopLoading();
        return;
      }

      // register user in firebase auth and save user data in firebase
      final UserCredential = await AuthentificationRepo.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      // save auth user data in the firebase firestore
      final newUser = UserModel(
          id: UserCredential.user!.uid,
          username: username.text.trim(),
          email: email.text.trim(),
          firstName: firstname.text.trim(),
          lastName: lastName.text.trim(),
          phoneNumber: phoneNumber.text.trim(),
          profilePicture: '');

      final userRepository = Get.put(UserRepository());
      userRepository.saveUserRecord(newUser);

      TFullScreenLoader.stopLoading();

      // show success
      TLoaders.successsnackBar(
          title: 'Congratulations',
          message: 'Your account has been created! Verify email to continue..');

      // move to verify email screen
      Get.to(() => const VerifyemailScreen());
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorsnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
