import 'package:bookly_app/Features/home/data/models/book_model.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsView extends StatelessWidget {
   BookDetailsView({super.key, required this.bookModel});
BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: BookDetailsViewBody(bookModel: bookModel ,))); //safeArea is used to avoid the notch and status bar
  }
}
