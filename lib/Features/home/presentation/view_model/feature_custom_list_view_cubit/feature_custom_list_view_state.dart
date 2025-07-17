import 'package:equatable/equatable.dart';

import '../../../data/models/book_model.dart';

abstract class FeatureCustomListViewState extends Equatable {
  const FeatureCustomListViewState();

  @override
  List<Object> get props => [];
}

class FeatureCustomListViewInitial extends FeatureCustomListViewState {}

class FeatureCustomListViewLoading extends FeatureCustomListViewState {}

class FeatureCustomListViewSuccess extends FeatureCustomListViewState {
  final List<BookModel> bookModels;

  const FeatureCustomListViewSuccess({required this.bookModels});
}

class FeatureCustomListViewFailure extends FeatureCustomListViewState {
  final String errorMessage;

 const FeatureCustomListViewFailure({required this.errorMessage});
}