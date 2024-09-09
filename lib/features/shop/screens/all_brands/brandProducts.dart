import 'package:flutter/material.dart';
import 'package:t_store/common/brandcard.dart';
import 'package:t_store/common/products/t_sortable_products.dart';
import 'package:t_store/common/widgets/custom_shapes/AppBar/appbar.dart';
import 'package:t_store/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(title: Text('Nike'),),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),child: Column(
          children: [
            TBrandCard(showborder: true),
            SizedBox(height: TSizes.spaceBtwSections,),
            TSortableProducts(),
          ],
        ),),
      ),
    );
  }
}