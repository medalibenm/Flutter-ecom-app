import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/roundedContainer.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TCouponCode extends StatelessWidget {
  const TCouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showborder: true,
      backgroundcolor: TColors.white,
      padding: const EdgeInsets.only(
          top: TSizes.sm, bottom: TSizes.sm, left: TSizes.md),
      child: Row(
        children: [
          Flexible(
              child: TextFormField(
            decoration: const InputDecoration(
              hintText: 'Have a promo code? Enter here',
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
          )),
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  foregroundColor: TColors.dark.withOpacity(0.5),
                  backgroundColor: Colors.grey.withOpacity(0.2),
                  side: BorderSide(
                      color: Colors.grey.withOpacity(0.1))),
              child: const Text('Apply'),
            ),
          )
        ],
      ),
    );
  }
}
