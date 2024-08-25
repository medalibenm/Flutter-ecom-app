import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/Product_Card/productCardH.dart';
import 'package:t_store/common/widgets/custom_shapes/AppBar/appbar.dart';
import 'package:t_store/common/widgets/rounded_image.dart';
import 'package:t_store/common/widgets/texts/sectionHeading.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class SubCategories extends StatelessWidget {
  const SubCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Sports'),
        showBackarrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TRoundedImage(
                imageUrl: TImages.promoBanner1,
                width: double.infinity,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              Column(
                children: [
                  TSectionHeading(
                    title: 'Sports shirts',
                    onPressed: () {},
                    textColor: TColors.dark,
                    showActionButton: true,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems / 2,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemBuilder: (context, index) => const TProductCardH(),
                      separatorBuilder: (context, index) => SizedBox(
                        width: TSizes.spaceBtwItems,
                      ),
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
