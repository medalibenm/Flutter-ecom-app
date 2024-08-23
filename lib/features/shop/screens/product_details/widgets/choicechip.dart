import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip(
      {super.key, required this.text, required this.selected, this.onselected});

  final String text;
  final bool selected;
  final void Function(bool)? onselected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: THelperFunctions.getColor(text) != null
          ? const SizedBox()
          : Text(text),
      selected: selected,
      onSelected: onselected,
      labelStyle: TextStyle(color: selected ? TColors.white : null),
      shape: THelperFunctions.getColor(text) != null ? CircleBorder() : null,
      avatar: THelperFunctions.getColor(text) != null
          ? TCircularContainer(
              width: 50,
              height: 50,
              backgroundColor: THelperFunctions.getColor(text)!)
          : null,
      labelPadding: THelperFunctions.getColor(text) != null
          ? const EdgeInsets.all(0)
          : null,
      padding: THelperFunctions.getColor(text) != null
          ? const EdgeInsets.all(0)
          : null,
      backgroundColor: THelperFunctions.getColor(text) != null
          ? THelperFunctions.getColor(text)!
          : null,
      selectedColor: Colors.green,
    );
  }
}
