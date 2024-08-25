import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/listTile/settingmenuTile.dart';
import 'package:t_store/common/widgets/custom_shapes/AppBar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/texts/sectionHeading.dart';
import 'package:t_store/features/personalisation/screens/address/address.dart';
import 'package:t_store/features/personalisation/screens/profile/profile.dart';
import 'package:t_store/features/shop/screens/order/order.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

import '../../../../common/listTile/userListTile.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          //! Header
          HomeHeader(
            child: Column(
              children: [
                TAppBar(
                  title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: TColors.white),
                  ),
                ),
                userListTile(
                  onpressed: () {
                    Get.to(() => const ProfileScreen());
                  },
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
              ],
            ),
          ),

          //! Body
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                const TSectionHeading(
                  title: 'Account settings',
                  textColor: TColors.black,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                SettingTile(
                  icon: Iconsax.safe_home,
                  title: 'My Addresses',
                  subtitle: 'Set shopping delivery address',
                  ontap: () => Get.to(() => const UserAddressScreen()),
                ),
                const SettingTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subtitle: 'Add, remove products and move to checkout'),
                SettingTile(
                  icon: Iconsax.bag_tick,
                  title: 'My Orders',
                  subtitle: 'In progress and Completed Orders',
                  ontap: () => Get.to(() => const OrderScreen()),
                ),
                const SettingTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subtitle: 'Withdraw balance to registered bank account'),
                const SettingTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subtitle: 'List of all the discounted coupons'),
                const SettingTile(
                    icon: Iconsax.notification,
                    title: 'Notification',
                    subtitle: 'Set any kind of notification message'),
                const SettingTile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subtitle: 'Manage data usage and connected accounts'),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                //! div
                const TSectionHeading(
                  title: 'App settings',
                  textColor: TColors.dark,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                const SettingTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subtitle: 'Upload Data to your Cloud Firebase'),
                SettingTile(
                  icon: Iconsax.location,
                  title: 'Geolocation',
                  subtitle: 'Set recommendation based on location',
                  trailing: Switch(value: true, onChanged: (value) {}),
                ),
                SettingTile(
                  icon: Iconsax.security_user,
                  title: 'Safe Mode',
                  subtitle: 'Search result is safe for all ages',
                  trailing: Switch(value: false, onChanged: (value) {}),
                ),
                SettingTile(
                  icon: Iconsax.image,
                  title: 'HD Image Quality',
                  subtitle: 'Set image quality to be seen',
                  trailing: Switch(value: false, onChanged: (value) {}),
                ),
                //! Logout button

                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () {}, child: const Text('Logout')),
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections * 2.5,
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
