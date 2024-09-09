import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/texts/sectionHeading.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class BillingAddress extends StatelessWidget {
  const BillingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(
          title: 'Shipping Address',
          buttontitle: 'Change',
          onPressed: () {},
          textColor: TColors.dark,
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),
        Text(
          'IT Shop',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Row(
          children: [
            const Icon(
              Icons.phone,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text(
              '+21354284-6009',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.location_history,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text(
              'Ouled Fayet, Algiers, Algeria',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),
      ],
    );
  }
}
