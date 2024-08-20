import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.width,
    this.height,
    this.radius,
    this.padding,
    this.child,
    this.backgroundColor = TColors.white,
    this.margin,
  });
  final double? width, height;
  final BorderRadius? radius;
  final Widget? child;
  final EdgeInsets? margin, padding;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: radius,
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
