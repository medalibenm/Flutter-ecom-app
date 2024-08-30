import 'package:flutter/material.dart';
import 'package:t_store/common/layout/grid.dart';
import 'package:t_store/common/widgets/Product_Card/productCardV.dart';
import 'package:t_store/common/widgets/custom_shapes/AppBar/appbar.dart';
import 'package:t_store/utils/constants/sizes.dart';

import '../../../../common/products/t_sortable_products.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Popular Products'),
        showBackarrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: TSortableProducts(),
        ),
      ),
    );
  }
}
