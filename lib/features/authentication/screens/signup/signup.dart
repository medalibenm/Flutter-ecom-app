import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/Login_signup/formDivider.dart';
import 'package:t_store/common/widgets/Login_signup/socialButtons.dart';
import 'package:t_store/features/authentication/screens/signup/widgets/singupForm.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              // Form
              const TSignupForm(),
              TDivider(Textt: TTexts.orSignInWith.capitalize!),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              // socials
              const TSocials(),
            ],
          ),
        ),
      ),
    );
  }
}
