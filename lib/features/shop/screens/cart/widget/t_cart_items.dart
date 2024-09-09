import 'package:flutter/material.dart';
import 'package:t_store/features/shop/screens/cart/widget/t_cart_item.dart';
import 'package:t_store/features/shop/screens/cart/widget/t_product_add_remove.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (_, index) => Column(
              children: [
                const TCartItem(),
                if (showAddRemoveButtons)
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                if (showAddRemoveButtons)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          SizedBox(
                            width: 70,
                          ),
                          TProductAddRemove(),
                        ],
                      ),
                      Text(
                        '\$256',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  )
              ],
            ),
        separatorBuilder: (_, __) => const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
        itemCount: 2);
  }
}
