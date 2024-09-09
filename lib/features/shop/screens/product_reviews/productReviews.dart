import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/AppBar/appbar.dart';
import 'package:t_store/features/shop/screens/product_reviews/widgets/userReviewCard.dart';
import 'package:t_store/utils/constants/sizes.dart';

import 'widgets/t_overrall_review.dart';
import 'widgets/t_rating_bar_indicator.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text(
          'Reviews and Ratings',
        ),
        showBackarrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Ratings and reviewsare verified  and are from people who use the same type of device that you use'),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const TOverrallReview(),
              const TRatingBarIndicator(
                rating: 3.5,
              ),
              Text(
                '12,611',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
