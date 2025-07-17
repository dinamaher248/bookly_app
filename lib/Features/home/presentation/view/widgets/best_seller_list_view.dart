import 'package:bookly_app/Features/home/presentation/view/widgets/best_seller_listView_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../utils/custom_error_widget.dart';
import '../../view_model/best_seller_list_view_cubit/best_seller_list_view_cubit.dart';
import '../../view_model/best_seller_list_view_cubit/best_seller_list_view_state.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerListViewCubit, BestSellerListViewState>(
      builder: (context, state) {
        if (state is BestSellerListViewLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is BestSellerListViewFailure) {
          return CustomErrorWidget(errMessage: state.errorMessage);
        } else if (state is BestSellerListViewSuccess) {
          return Expanded(
            child: ListView.builder(
             // shrinkWrap: true, // to take the height of your children
              physics:
                  const NeverScrollableScrollPhysics(), // to disable scrolling of the list view
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BestSellerListViewItem(
                    bookModel: state.bookModels[index],
                  ),
                );
              },
              itemCount: state.bookModels.length,
            ),
          );
        }
        return const SizedBox.shrink(); // Return an empty widget if no state matches
      },
    );
  }
}
