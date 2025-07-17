import 'package:bookly_app/Features/home/data/models/book_model.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/book_details_view/custom_app_bar_book_details.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/feature_custom_list_view.dart';
import 'package:bookly_app/utils/custom_text_widget.dart';
import 'package:flutter/material.dart';

import 'book_details_view/book_details_section.dart';
import 'book_details_view/price_book_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBarBookDetails(),
          BookDetailsSection(bookModel: bookModel),

          const SizedBox(height: 20),

          PriceBookSection(bookModel: bookModel),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(right: 120),
            child: CustomTextWidget(
              textAlign: TextAlign.start,
              text: "You Can Also Like ",
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: FeatureCustomListView(heightPhoto: 0.2),
          ),
        ],
      ),
    );
  }
}

