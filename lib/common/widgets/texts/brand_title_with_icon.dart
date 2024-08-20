import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/texts/brand_title.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TBrandTitle extends StatelessWidget {
  const TBrandTitle({
    super.key,
    required this.title,
    this.maxlines = 1,
    this.textcolor,
    this.iconcolor = TColors.primary,
    this.textalign = TextAlign.center,
    this.brandtextsize = TextSizes.small,
  });

  final String title;
  final int maxlines;
  final Color? textcolor, iconcolor;
  final TextAlign? textalign;
  final TextSizes brandtextsize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TBrandTitleText(
            title: title,
            color: textcolor,
            maxlines: maxlines,
            textalign: textalign,
            brandtextsize: brandtextsize,
          ),
        ),
        SizedBox(
          width: TSizes.xs,
        ),
        Icon(
          Iconsax.verify5,
          color: TColors.primary,
          size: TSizes.iconXs,
        )
      ],
    );
  }
}
