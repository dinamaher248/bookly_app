import 'package:bookly_app/Features/home/presentation/view/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/custom_book_image_item.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/custom_text_widget.dart';
import '../../../data/models/book_model.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomBookImageItem(
          imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail,
        ),
        const SizedBox(width: 30),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width:
                    MediaQuery.sizeOf(context).width *
                    0.6, // Adjust width to fit the screen
                child: CustomTextFontFamily(
                  text: bookModel.volumeInfo.title ?? 'Unknown Title',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 5),
              CustomTextWidget(
                text:
                    bookModel.volumeInfo.authors?.join(', ') ??
                    'Unknown Author',
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              Row(
                children: [
                  CustomTextFontFamily(
                    text: "Free",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  Spacer(),
                  BookRating(
                    rating: bookModel.volumeInfo.pageCount!,
                    avgRating: bookModel.volumeInfo.ratingsCount ?? 0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
