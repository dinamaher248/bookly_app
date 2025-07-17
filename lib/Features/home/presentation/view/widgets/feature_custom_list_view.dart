import 'package:bookly_app/Features/home/presentation/view/widgets/custom_book_image_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants/app_router.dart';
import '../../../../../utils/custom_error_widget.dart';
import '../../view_model/feature_custom_list_view_cubit/feature_custom_list_view_cubit.dart';
import '../../view_model/feature_custom_list_view_cubit/feature_custom_list_view_state.dart';

class FeatureCustomListView extends StatelessWidget {
  FeatureCustomListView({super.key, this.heightPhoto = 0.3});
  double heightPhoto;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureCustomListViewCubit, FeatureCustomListViewState>(
      builder: (context, state) {
        if (state is FeatureCustomListViewLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is FeatureCustomListViewFailure) {
          return CustomErrorWidget(errMessage: state.errorMessage);
        } else if (state is FeatureCustomListViewSuccess) {
          return SizedBox(
           height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: GestureDetector(
                    onTap: () {
                          GoRouter.of(context).push(
                            AppRouter.bookDetailsViewPath,
                            extra: state.bookModels[index],
                          );
                    },
                    child: CustomBookImageView(
                      imageUrl:
                          state
                              .bookModels[index]
                              .volumeInfo
                              .imageLinks
                              ?.thumbnail ??
                          '',
                    ),
                  ),
                );
              },
              scrollDirection: Axis.horizontal,
              itemCount: state.bookModels.length,
              physics: const BouncingScrollPhysics(), // For smooth scrolling
            ),
          );
        }
        return const SizedBox.shrink(); // Return an empty widget if no state matches
      },
    );
  }
}
