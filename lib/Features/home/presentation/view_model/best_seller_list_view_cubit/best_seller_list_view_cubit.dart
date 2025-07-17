import 'package:bookly_app/Features/home/presentation/view_model/best_seller_list_view_cubit/best_seller_list_view_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repo/home_repo.dart';

class BestSellerListViewCubit extends Cubit<BestSellerListViewState> {
  final HomeRepo homeRepo;
  BestSellerListViewCubit(this.homeRepo) : super(BestSellerListViewInitial());
  Future fetchNewestBooks() async {
    emit(BestSellerListViewLoading());
    var result = await homeRepo.fetchBestSellerBooks();

    result.fold(
      (failure) =>
          emit(BestSellerListViewFailure(errorMessage: failure.errorMessage)),
      (bookModels) => emit(BestSellerListViewSuccess(bookModels: bookModels)),
    );
  }
}
