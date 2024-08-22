import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer(
      {super.key,
      this.width,
      this.height,
      this.radius = TSizes.cardRadiusLg,
      this.child,
      this.showborder = false,
      this.bordercolor = TColors.borderPrimary,
      this.backgroundcolor = TColors.white,
      this.margin,
      this.padding});

  final double? width, height;
  final double radius;
  final Widget? child;
  final bool showborder;
  final Color bordercolor, backgroundcolor;
  final EdgeInsetsGeometry? margin, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundcolor,
        borderRadius: BorderRadius.circular(radius),
        border: showborder ? Border.all(color: bordercolor) : null,
      ),
      child: child,
    );
  }
}
