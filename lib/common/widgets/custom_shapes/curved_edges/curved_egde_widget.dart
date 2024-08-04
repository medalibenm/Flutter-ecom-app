import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/curved_edges/curved_edge.dart';

class CustomShape extends StatelessWidget {
  const CustomShape({
    super.key,
    this.child,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomClip(),
      child: child,
    );
  }
}
