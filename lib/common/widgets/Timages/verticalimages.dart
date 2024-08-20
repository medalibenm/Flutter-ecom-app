
import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TSlideImage extends StatelessWidget {
  const TSlideImage({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(TSizes.md),
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(TSizes.md),
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.contain,
            )),
      ),
    );
  }
}