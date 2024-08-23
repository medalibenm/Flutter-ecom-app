import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/Timages/tcircularimage.dart';
import 'package:t_store/common/widgets/custom_shapes/AppBar/appbar.dart';
import 'package:t_store/common/widgets/texts/sectionHeading.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

import 'widgets/t_profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackarrow: true,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    TCircularImage(
                      image: TImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {}, child: Text('Change Profile Picture'))
                  ],
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const TSectionHeading(
                title: 'Profile Information',
                showActionButton: false,
                textColor: TColors.dark,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TProfileMenu(
                title: 'Name',
                value: 'Mohamed Ali Benmerabet',
                onpressed: () {},
              ),
              TProfileMenu(
                title: 'Username',
                value: 'med_ali53',
                onpressed: () {},
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const TSectionHeading(
                title: 'Private Information',
                showActionButton: false,
                textColor: TColors.dark,
              ),
              TProfileMenu(
                title: 'User ID',
                value: '45678',
                onpressed: () {},
              ),
              TProfileMenu(
                title: 'E-mail',
                value: 'medali@gmail.com',
                onpressed: () {},
              ),
              TProfileMenu(
                title: 'Phone Number',
                value: '+213-542846009',
                onpressed: () {},
              ),
              TProfileMenu(
                title: 'Gender',
                value: 'Male',
                onpressed: () {},
              ),
              TProfileMenu(
                title: 'Date of Birth',
                value: '31 May, 2006',
                onpressed: () {},
              ),
              const Divider(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
