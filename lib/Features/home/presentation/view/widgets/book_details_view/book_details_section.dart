
import 'package:bookly_app/Features/home/presentation/view/widgets/book_rating.dart';
import 'package:flutter/material.dart';

import '../../../../../../utils/custom_text_widget.dart';
import '../../../../data/models/book_model.dart';
import '../custom_book_image_view.dart';

class BookDetailsSection extends StatelessWidget {
  BookDetailsSection({super.key, required this.bookModel});

  BookModel bookModel;

  @override
  Widget build(BuildContext context) {
     var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImageView(
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        SizedBox(height: 43),
        CustomTextFontFamily(
          text: bookModel.volumeInfo.title ?? 'Unknown Title',
          fontWeight: FontWeight.w600,
          fontSize: 30,
        ),
                SizedBox(height: 6),

        Opacity(
          opacity: 0.7,
          child: CustomTextFontFamily(
            text: bookModel.volumeInfo.authors?.join(', ') ?? 'Unknown Author',
            fontWeight: FontWeight.w500,
            fontSize: 18,
            fontStyle: FontStyle.italic,
          ),
        ),
const SizedBox(
          height: 18,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
            rating: bookModel.volumeInfo.pageCount!,
            avgRating: bookModel.volumeInfo.ratingsCount ?? 0,
          ),
        ),
      ],
    );
  }
}
