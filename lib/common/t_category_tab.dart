import 'package:flutter/material.dart';
import 'package:t_store/common/layout/grid.dart';
import 'package:t_store/common/widgets/Product_Card/productCardV.dart';
import 'package:t_store/common/widgets/texts/brandshowcase.dart';
import 'package:t_store/common/widgets/texts/sectionHeading.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //! Brands
              const TBrandShowCase(
                images: [
                  TImages.productImage3,
                  TImages.productImage2,
                  TImages.productImage1
                ],
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              //! Products
              TSectionHeading(
                title: 'You might like',
                showActionButton: true,
                onPressed: () {},
                textColor: TColors.dark,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TGridLayout(
                  itemCount: 4, itemBuilder: (_, index) => const TProductCardV())
            ],
          ),
        ),
      ],
    );
  }
}
