import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/roundedContainer.dart';
import 'package:t_store/common/widgets/texts/producttitle.dart';
import 'package:t_store/common/widgets/texts/sectionHeading.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/choicechip.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundcolor: TColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const TSectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                    textColor: TColors.dark,
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(
                            title: 'Price : ',
                            smallSize: true,
                          ),
                          const SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),
                          Row(
                            children: [
                              Text(
                                '\$25',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .apply(
                                        decoration: TextDecoration.lineThrough),
                              ),
                              const SizedBox(
                                width: TSizes.spaceBtwItems,
                              ),
                              Text(
                                '\$20',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.titleLarge,
                              )
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const TProductTitleText(
                            title: 'Stock : ',
                            smallSize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const TProductTitleText(
                title:
                    'This is the Description of the Product and it can go upto max 4 lines',
                smallSize: true,
                maxlines: 4,
              )
            ],
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(
              title: 'Colors',
              textColor: TColors.dark,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            Wrap(
              children: [
                TChoiceChip(
                  text: 'Green',
                  selected: true,
                  onselected: (value) {},
                ),
                TChoiceChip(
                  text: 'Blue',
                  selected: false,
                  onselected: (value) {},
                ),
                TChoiceChip(
                  text: 'Yellow',
                  selected: false,
                  onselected: (value) {},
                ),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(
              title: 'Size',
              textColor: TColors.dark,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                  text: 'EU 34',
                  selected: true,
                  onselected: (value) {},
                ),
                TChoiceChip(
                  text: 'EU 36',
                  selected: false,
                  onselected: (value) {},
                ),
                TChoiceChip(
                  text: 'EU 35',
                  selected: false,
                  onselected: (value) {},
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
