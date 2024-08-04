import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/custom_shapes/AppBar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/SearchBar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/image_text_widgets/Vertical_ImageText.dart';
import 'package:t_store/common/widgets/product_cart/cart_menu)icon.dart';
import 'package:t_store/common/widgets/texts/sectionHeading.dart';
import 'package:t_store/features/shop/screens/home/widgets/Home_appBar.dart';
import 'package:t_store/features/shop/screens/home/widgets/homeCategories.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/device/device_utility.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeader(
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
                        const SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        THomeCategories()
                      ],
                    ),
                  )
                ],
              ),
            ),

            //  BODY

            
          ],
        ),
      ),
    );
  }
}
