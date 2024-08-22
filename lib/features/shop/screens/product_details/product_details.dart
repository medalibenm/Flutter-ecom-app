import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/custom_shapes/AppBar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/curved_edges/curved_edge.dart';
import 'package:t_store/common/widgets/custom_shapes/curved_edges/curved_egde_widget.dart';
import 'package:t_store/common/widgets/icons/t_circularIcon.dart';
import 'package:t_store/common/widgets/rounded_image.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/attributes.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

import 'widgets/t_product_image_slider.dart';
import 'widgets/t_rating_share.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
