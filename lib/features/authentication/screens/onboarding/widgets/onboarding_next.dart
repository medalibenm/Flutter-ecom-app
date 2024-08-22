import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/controllers/onboarding_controller.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/device_utility.dart';

class nextButton extends StatelessWidget {
  const nextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        right: TSizes.defaultSpace,
        child: ElevatedButton(
            onPressed: () {
              OnBoardingController.instance.nextPage();
            },
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: Colors.black), // fix dark mode here too
            child: const Icon(Iconsax.arrow_right_3)));
  }
}
