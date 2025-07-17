import 'package:bookly_app/Features/home/presentation/view/widgets/best_seller_list_view.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/feature_custom_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../../utils/custom_text_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [ // we use slivers to create a scrollable area
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                FeatureCustomListView(),
                SizedBox(height: 30),
                CustomTextWidget(
                  text: 'Best Seller',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: 10),

              ],
            ),
          ),
        ),
       const SliverFillRemaining( //عشان نملأ المساحة المتبقية
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
