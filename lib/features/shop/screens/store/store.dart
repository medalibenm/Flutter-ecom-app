import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/Timages/tcircularimage.dart';
import 'package:t_store/common/widgets/custom_shapes/AppBar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/SearchBar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:t_store/common/widgets/product_cart/cart_menuicon.dart';
import 'package:t_store/common/widgets/texts/sectionHeading.dart';
import 'package:t_store/features/shop/screens/home/widgets/Home_appBar.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Store'),
        actions: [
          CartCounterIcon(
            iconColor: Colors.black,
          ),
        ],
      ),
      body: NestedScrollView(
          body: Row(),
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        TSearchContainer(
                          text: 'Search in Store',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),

                        //! Featured brands

                        TSectionHeading(
                          title: 'Featured Brands',
                          textColor: Colors.black,
                          showActionButton: true,
                          onPressed: () {},
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwItems / 1.5,
                        ),
                        TCircularContainer(
                            padding: const EdgeInsets.all(TSizes.sm),
                            backgroundColor: Colors.transparent,
                            child: Row(children: [
                              TCircularImage(
                                isNetworkImage: false,
                                image: TImages.clothIcon,
                                backgroundColor: Colors.transparent,
                                overlayColor: TColors.dark,
                              ),
                            ])),
                            const SizedBox(),

                            //! Text
                            
                      ]),
                ),
              ),
            ];
          }),
    );
  }
}
