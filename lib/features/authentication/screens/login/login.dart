import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/Login_signup/formDivider.dart';
import 'package:t_store/common/widgets/Login_signup/socialButtons.dart';
import 'package:t_store/features/authentication/screens/login/widgets/LoginForm.dart';
import 'package:t_store/features/authentication/screens/login/widgets/LoginHeader.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              top: TSizes.appBarHeight,
              left: TSizes.defaultSpace,
              bottom: TSizes.defaultSpace,
              right: TSizes.defaultSpace),
          child: Column(
            children: [
              // logo and text
              const LoginHeader(),
              // form
              const LoginForm(),
              // divider
              TDivider(
                Textt: TTexts.orSignInWith.capitalize!,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections - 1,
              ),
              // Footer
              const TSocials()
            ],
          ),
        ),
      ),
    );
  }
}
