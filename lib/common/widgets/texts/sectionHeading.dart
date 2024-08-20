import 'package:flutter/material.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key,
    this.textColor = Colors.white,
    this.showActionButton = false,
    required this.title,
    this.onPressed,
    this.buttontitle = 'View All',
  });

  final Color? textColor;
  final bool showActionButton;
  final String title, buttontitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(onPressed: () {}, child: Text(buttontitle)),
      ],
    );
  }
}
