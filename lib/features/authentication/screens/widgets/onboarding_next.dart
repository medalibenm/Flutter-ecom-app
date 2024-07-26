import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
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
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                shape: CircleBorder(), backgroundColor: Colors.black), // fix dark mode here too
            child: Icon(Iconsax.arrow_right_3)));
  }
}
