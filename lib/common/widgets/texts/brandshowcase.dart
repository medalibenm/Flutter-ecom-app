import 'package:flutter/material.dart';
import 'package:t_store/common/brandcard.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/roundedContainer.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key, required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showborder: true,
      padding: const EdgeInsets.all(TSizes.md),
      bordercolor: TColors.darkGrey,
      backgroundcolor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          const TBrandCard(showborder: false),
          const SizedBox(height: TSizes.spaceBtwItems,),
          Row(
            children: images.map((e) => BrandTopProductImage(e)).toList()
          ),
        ],
      ),
    );
  }

  Widget BrandTopProductImage(image) {
    return Expanded(
      child: TRoundedContainer(
        height: 100,
        padding: const EdgeInsets.all(TSizes.md),
        backgroundcolor: TColors.light,
        margin: const EdgeInsets.only(right: TSizes.sm),
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
