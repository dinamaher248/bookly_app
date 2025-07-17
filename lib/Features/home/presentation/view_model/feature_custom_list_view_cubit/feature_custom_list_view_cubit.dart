import 'package:bookly_app/Features/home/presentation/view_model/feature_custom_list_view_cubit/feature_custom_list_view_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show Cubit;

import '../../../data/repo/home_repo.dart';

class FeatureCustomListViewCubit extends Cubit<FeatureCustomListViewState> {
  final HomeRepo homeRepo;
  FeatureCustomListViewCubit(this.homeRepo) : super(FeatureCustomListViewInitial());

  Future<void> fetchFeaturedBooks() async {
    emit(FeatureCustomListViewLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold( // it returns either a failure or a success
        (failure) =>
            emit(FeatureCustomListViewFailure(errorMessage: failure.errorMessage)),
        (bookModels) => emit(FeatureCustomListViewSuccess(bookModels: bookModels)));
  }
}