import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:t_store/common/widgets/succesScreen/succesScreen.dart';
import 'package:t_store/data/repositories/authentification_repo.dart';
import 'package:t_store/features/authentication/controllers/verifyEmail.dart';
import 'package:t_store/features/authentication/screens/login/login.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class VerifyemailScreen extends StatelessWidget {
  const VerifyemailScreen({super.key, this.email});

  final String? email;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyEmailController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => AuthentificationRepo.instance.logout(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(
                image: const AssetImage(TImages.deliveredEmailIllustration),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              // texts
              Text(
                TTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text('support@medaliflutter.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text(
                TTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems + 15,
              ),
              // buttons
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => SuccesScreen(
                            title: TTexts.yourAccountCreatedTitle,
                            subTitle: TTexts.yourAccountCreatedSubTitle,
                            image: TImages.staticSuccessIllustration,
                            onPressed: () => AuthentificationRepo.instance.screenRedirect(),
                          ));
                    },
                    child: const Text(TTexts.tContinue),
                  )),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      controller.checkEmailVerificationStatus();
                    },
                    child: const Text(TTexts.resendEmail),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
