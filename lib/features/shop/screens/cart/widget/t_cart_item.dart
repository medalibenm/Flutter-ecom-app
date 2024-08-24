import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/rounded_image.dart';
import 'package:t_store/common/widgets/texts/brand_title_with_icon.dart';
import 'package:t_store/common/widgets/texts/producttitle.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TRoundedImage(
          imageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: TColors.light,
        ),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        Expanded(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TBrandTitle(title: 'Nike'),
            const Flexible(
                child: TProductTitleText(
              title: 'Black Sports shoes',
              maxlines: 1,
            )),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: 'Color ',
                  style:
                      Theme.of(context).textTheme.bodySmall)
            ]))
          ],
        ))
      ],
    );
  }
}
