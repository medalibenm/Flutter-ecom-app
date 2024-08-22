import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/Timages/tcircularimage.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';

class userListTile extends StatelessWidget {
  const userListTile({
    super.key, required this.onpressed,
  });

  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(
        image: TImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Mohamed Ali Benmerabet',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: TColors.white),
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        'medalibenmerabet@gmail.com',
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),
        overflow: TextOverflow.ellipsis,
      ),
      trailing: IconButton(
        icon: const Icon(
          Iconsax.edit,
          color: Colors.white,
        ),
        onPressed:onpressed,
      ),
    );
  }
}
