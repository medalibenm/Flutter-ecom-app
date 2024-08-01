import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class TermsandConditons extends StatelessWidget {
  const TermsandConditons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            height: 24,
            width: 18,
            child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: '${TTexts.iAgreeTo} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: '${TTexts.privacyPolicy} ',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(
                      color: TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: TColors.primary)),
          TextSpan(
              text: '${TTexts.and} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: '${TTexts.termsOfUse} ',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(
                      color: TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: TColors.primary)),
        ]))
      ],
    );
  }
}
