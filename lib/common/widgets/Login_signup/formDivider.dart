import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';

class TDivider extends StatelessWidget {
  const TDivider({
    super.key, required this.Textt,
  });
  final String Textt;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Flexible(
          child: Divider(
            color: TColors.darkGrey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          Textt,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const Flexible(
          child: Divider(
            color: TColors.darkGrey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
