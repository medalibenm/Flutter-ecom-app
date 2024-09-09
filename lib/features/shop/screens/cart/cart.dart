import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:t_store/common/widgets/custom_shapes/AppBar/appbar.dart';
import 'package:t_store/features/shop/screens/checkout/checkout.dart';
import 'package:t_store/utils/constants/sizes.dart';

import 'widget/t_cart_items.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () {
              Get.to(() => const CheckoutScreen());
            },
            child: const Text('Checkout \$256.0')),
      ),
      appBar: TAppBar(
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackarrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: TCartItems(),
      ),
    );
  }
}
