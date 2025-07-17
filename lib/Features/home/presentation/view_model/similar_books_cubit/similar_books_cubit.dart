import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model.dart';
import 'package:bookly_app/Features/home/data/repo/home_repo.dart';
import 'package:bookly_app/Features/home/data/repo/home_repo_imple.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
   final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks() async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks();
    result.fold(
        (failure) =>
            emit(SimilarBooksFailure(errorMessage: failure.errorMessage)),
        (bookModels) => emit(SimilarBooksSuccess(bookModels: bookModels)));
  }
}
