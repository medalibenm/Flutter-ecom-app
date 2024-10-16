import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:t_store/common/widgets/image_text_widgets/Vertical_ImageText.dart';
import 'package:t_store/features/shop/screens/sub_category/subcategory.dart';
import 'package:t_store/utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return Vertical_ImageText(
            image: TImages.shoeIcon,
            title: 'Shoes',
            onTap: () {
              Get.to(() => const SubCategories());
            },
          );
        },
      ),
    );
  }
}
