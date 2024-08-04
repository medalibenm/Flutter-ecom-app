import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class Vertical_ImageText extends StatelessWidget {
  const Vertical_ImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = TColors.white,
    this.bacgroundColor,
    required this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? bacgroundColor;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                color: TColors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                  child: Image(
                image: AssetImage(TImages.shoeIcon),
                fit: BoxFit.cover,
                color: TColors.dark,
              )),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                'Shoes',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: TColors.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
