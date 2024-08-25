import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/styles/shadow.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/roundedContainer.dart';
import 'package:t_store/common/widgets/icons/t_circularIcon.dart';
import 'package:t_store/common/widgets/rounded_image.dart';
import 'package:t_store/common/widgets/texts/brand_title_with_icon.dart';
import 'package:t_store/common/widgets/texts/producttitle.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TProductCardH extends StatelessWidget {
  const TProductCardH({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: TColors.softGrey,
      ),
      child: Row(
        children: [
          TRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundcolor: TColors.light,
            child: Stack(
              children: [
                SizedBox(
                  height: 120,
                  width: 120,
                  child: TRoundedImage(
                    imageUrl: TImages.productImage1,
                    applyImageRadius: true,
                  ),
                ),
                Positioned(
                  top: 12,
                  child: TCircularContainer(
                    radius: BorderRadius.circular(TSizes.sm),
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: TColors.black),
                    ),
                  ),
                ),

                // favorite icon button
                Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    )),
              ],
            ),
          ),
          SizedBox(
            width: 172,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TProductTitleText(
                            title: 'Green Nike Half Sleeves Shirt',
                            smallSize: true,
                          ),
                          SizedBox(
                            height: TSizes.spaceBtwItems / 2,
                          ),
                          TBrandTitle(title: 'Nike'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$256.0',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                color: TColors.dark,
                                borderRadius: BorderRadius.only(
                                    topLeft:
                                        Radius.circular(TSizes.cardRadiusMd),
                                    bottomRight: Radius.circular(
                                        TSizes.productImageRadius))),
                            child: const SizedBox(
                              height: TSizes.iconLg * 1.2,
                              width: TSizes.iconLg * 1.2,
                              child: Center(
                                child: Icon(
                                  Iconsax.add,
                                  color: TColors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
