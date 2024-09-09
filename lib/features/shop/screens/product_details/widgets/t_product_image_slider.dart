import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/custom_shapes/AppBar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/curved_edges/curved_egde_widget.dart';
import 'package:t_store/common/widgets/icons/t_circularIcon.dart';
import 'package:t_store/common/widgets/rounded_image.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomShape(
      child: Container(
        child: Stack(
          children: [
            const TAppBar(
              showBackarrow: true,
              actions: [
                TCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            ),
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(TSizes.productImageRadius * 2),
                child: Center(
                    child: Image(image: AssetImage(TImages.productImage1))),
              ),
            ),

            //! image slider
            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemBuilder: (_, index) => TRoundedImage(
                    imageUrl: TImages.productImage3,
                    width: 80,
                    border: Border.all(color: TColors.primary),
                    padding: const EdgeInsets.all(TSizes.sm),
                    backgroundColor: TColors.white,
                  ),
                  separatorBuilder: (_, __) => const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
