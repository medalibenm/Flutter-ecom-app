import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:t_store/features/authentication/screens/login/login.dart';
import 'package:t_store/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:t_store/features/authentication/screens/signup/verifyEmail.dart';
import 'package:t_store/navigationBottom.dart';
import 'package:t_store/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:t_store/utils/exceptions/firebase_exceptions.dart';
import 'package:t_store/utils/exceptions/platform_exceptions.dart';

class AuthentificationRepo extends GetxController {
  static AuthentificationRepo get instance => Get.find();

  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  void screenRedirect() {
    final user = _auth.currentUser;
    //? email
    if (user != null) {
      if (user.emailVerified) {
        Get.offAll(() => NavigationMenu());
      } else {
        Get.offAll(() => VerifyemailScreen(
              email: _auth.currentUser?.email,
            ));
      }
    } else {
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

  // email register
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const FormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong, Please try again';
    }
  }

  Future<void> sendEmailVerification() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const FormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong, Please try again';
    }
  }

  Future<void> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      Get.offAll(() => const Login());
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const FormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong, Please try again';
    }
  }
}
