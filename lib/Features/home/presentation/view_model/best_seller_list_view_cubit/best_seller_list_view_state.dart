import '../../../data/models/book_model.dart';

class BestSellerListViewState {}
class BestSellerListViewInitial extends BestSellerListViewState {}
class BestSellerListViewLoading extends BestSellerListViewState {}
class BestSellerListViewSuccess extends BestSellerListViewState {
  final List<BookModel> bookModels;

   BestSellerListViewSuccess({required this.bookModels});
}
class BestSellerListViewFailure extends BestSellerListViewState {
  final String errorMessage;

   BestSellerListViewFailure({required this.errorMessage});
}

  