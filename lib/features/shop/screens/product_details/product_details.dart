import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/texts/sectionHeading.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/add_to_cartBottom.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/attributes.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
// import 'package:readmore/readmore.dart';

import 'widgets/t_product_image_slider.dart';
import 'widgets/t_rating_share.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TProductImageSlider(),

            //! product details
            Padding(
              padding: const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(children: [
                TRatingShare(),

                //! price title stock and brand
                TProductMetaData(),

                //!  Attributes
                ProductAttributes(),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                //! Checkout Button
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text('Checkout'))),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                //! Description
                // const TSectionHeading(
                //   title: 'Description',
                //   textColor: TColors.dark,
                // ),
                // const SizedBox(
                //   height: TSizes.spaceBtwItems,
                // ),
                // const ReadMoreText(
                //   'This is a product description lorem ipsum lorem ipsum lorem ipsumlorem ipsum lorem ipsum lorem ipsumlorem ipsum lorem ipsum lorem ipsum',
                //   trimLines: 2,
                //   trimMode: TrimMode.Line,
                //   trimCollapsedText: ' Show More',
                //   trimExpandedText: ' Less',
                //   moreStyle: TextStyle(
                //       fontSize: 14, fontWeight: FontWeight.w800),
                //   lessStyle: TextStyle(
                //       fontSize: 14, fontWeight: FontWeight.w800),
                // )
                //? Readmore package is causing error

                //! Reviews
                const Divider(),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TSectionHeading(
                      title: 'Reviews(199)',
                      showActionButton: false,
                      textColor: TColors.dark,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Iconsax.arrow_right_3,
                          size: 18,
                        )),
                  ],
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
