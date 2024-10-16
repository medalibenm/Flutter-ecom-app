import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:t_store/common/layout/grid.dart';
import 'package:t_store/common/widgets/Product_Card/productCardV.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/SearchBar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/texts/sectionHeading.dart';
import 'package:t_store/features/shop/screens/all_products/all_products.dart';
import 'package:t_store/features/shop/screens/home/widgets/Home_appBar.dart';
import 'package:t_store/features/shop/screens/home/widgets/homeCategories.dart';
import 'package:t_store/features/shop/screens/home/widgets/slider.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HomeHeader(
              child: Column(
                children: [
                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  TSearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  // categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'Popular Categories',
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        THomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),

            //  BODY
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TSliderAll(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  TSectionHeading(
                    title: 'Popular Products',
                    textColor: TColors.dark,
                    showActionButton: true,
                    onPressed: () => Get.to(() => const AllProducts()),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const TProductCardV(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
