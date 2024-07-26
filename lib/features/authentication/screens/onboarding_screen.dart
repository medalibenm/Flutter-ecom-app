import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:t_store/features/authentication/screens/widgets/onboarding_next.dart';
import 'package:t_store/features/authentication/screens/widgets/onboarding_page.dart';
import 'package:t_store/features/authentication/screens/widgets/onboarding_skip.dart';
import 'package:t_store/features/authentication/screens/widgets/page_dot.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              OnBoardingWidget(
                image: TImages.onBoardingImage1,
                titlem: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingWidget(
                image: TImages.onBoardingImage2,
                titlem: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingWidget(
                image: TImages.onBoardingImage3,
                titlem: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
              )
            ],
          ),
          const skipButton(),
          const page_dot(),
          const nextButton()
        ],
      ),
    );
  }
}

