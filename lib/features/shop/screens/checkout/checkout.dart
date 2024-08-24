import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/custom_shapes/AppBar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/roundedContainer.dart';
import 'package:t_store/common/widgets/rounded_image.dart';
import 'package:t_store/common/widgets/succesScreen/succesScreen.dart';
import 'package:t_store/features/shop/screens/cart/widget/t_cart_items.dart';
import 'package:t_store/features/shop/screens/checkout/widget/billing_amount_section.dart';
import 'package:t_store/features/shop/screens/checkout/widget/billing_pay_section.dart';
import 'package:t_store/features/shop/screens/checkout/widget/billing_address_section.dart';
import 'package:t_store/navigationBottom.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

import 'widget/t_coupon_code.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () {
              Get.to(() => SuccesScreen(
                    title: 'Payment Success!',
                    image: TImages.successfulPaymentIcon,
                    subTitle: 'Your item will be shipped soon!',
                    onPressed: () {
                      Get.offAll(() => const NavigationMenu());
                    },
                  ));
            },
            child: Text('Checkout \$256.0')),
      ),
      appBar: TAppBar(
        showBackarrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TCartItems(
                showAddRemoveButtons: false,
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              TCouponCode(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              //! billing infos
              TRoundedContainer(
                padding: EdgeInsets.all(TSizes.md),
                showborder: true,
                backgroundcolor: TColors.white,
                child: Column(
                  children: [
                    BillingAmount(),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    //! payments methods
                    BillingPayment(),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),

                    BillingAddress(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
