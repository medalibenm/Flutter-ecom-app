import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/controllers/signup_controller.dart';
import 'package:t_store/features/authentication/screens/signup/verifyEmail.dart';
import 'package:t_store/features/authentication/screens/signup/widgets/TermsAndConditions.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/validators/validation.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
        key: controller.signupFormkey,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: TextFormField(
                  controller: controller.firstname,
                  validator: (value) =>
                      TValidator.validateNotEmpty(value, 'First name'),
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: TTexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                )),
                const SizedBox(
                  width: TSizes.spaceBtwInputFields,
                ),
                Expanded(
                    child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) =>
                      TValidator.validateNotEmpty(value, 'Last name'),
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: TTexts.lastName,
                      prefixIcon: Icon(Iconsax.user)),
                )),
              ],
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),

            // username

            TextFormField(
              controller: controller.username,
              validator: (value) =>
                  TValidator.validateNotEmpty(value, 'username'),
              expands: false,
              decoration: const InputDecoration(
                  labelText: TTexts.username,
                  prefixIcon: Icon(Iconsax.user_edit)),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),

            TextFormField(
              controller: controller.phoneNumber,
              validator: (value) => TValidator.validatePhoneNumber(value),
              expands: false,
              decoration: const InputDecoration(
                  labelText: TTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),
            TextFormField(
              controller: controller.email,
              validator: (value) => TValidator.validateEmail(value),
              expands: false,
              decoration: const InputDecoration(
                  labelText: TTexts.email, prefixIcon: Icon(Iconsax.box)),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),
            Obx(
              () => TextFormField(
                controller: controller.password,
                validator: (value) => TValidator.validatePassword(value),
                expands: false,
                obscureText: controller.hidePassword.value,
                decoration: InputDecoration(
                    labelText: TTexts.password,
                    prefixIcon: Icon(Iconsax.password_check),
                    suffixIcon: IconButton(
                      icon: controller.hidePassword.value
                          ? Icon(Iconsax.eye_slash)
                          : Icon(Iconsax.eye),
                      onPressed: () {
                        controller.hidePassword.value =
                            !controller.hidePassword.value;
                      },
                    )),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),

            // terms and conditions

            const TermsandConditons(),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            // Sign up button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    controller.signup();
                  },
                  child: const Text(TTexts.createAccount)),
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
          ],
        ));
  }
}
