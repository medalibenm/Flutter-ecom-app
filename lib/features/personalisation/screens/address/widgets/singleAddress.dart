import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/roundedContainer.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      padding: const EdgeInsets.all(TSizes.md),
      width: double.infinity,
      showborder: true,
      backgroundcolor: selectedAddress
          ? TColors.primary.withOpacity(0.5)
          : Colors.transparent,
      bordercolor: selectedAddress ? Colors.transparent : TColors.grey,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
              top: 0,
              right: 5,
              child: Icon(
                selectedAddress ? Iconsax.tick_circle5 : null,
                color: TColors.dark,
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'John Doe',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: TSizes.sm / 2,
              ),
              const Text(
                '+21354284-6009',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: TSizes.sm / 2,
              ),
              const Text(
                '82345 Timmy Coves, South Liana, 87665, USA',
                softWrap: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
