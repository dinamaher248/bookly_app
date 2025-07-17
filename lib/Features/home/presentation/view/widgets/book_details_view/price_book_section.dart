
import 'package:flutter/material.dart';

import '../../../../../../utils/custom_button.dart';
import '../../../../../../utils/launch_custome_url.dart';
import '../../../../data/models/book_model.dart';

class PriceBookSection extends StatelessWidget {
  PriceBookSection({super.key, required this.bookModel});
  BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          onTap: () {
             launchCustomUrl(context, 'bookModel.volumeInfo.previewLink');
          },
          topLeft: Radius.circular(15),
          bottomLeft: Radius.circular(15),
          text: bookModel.volumeInfo.authors?.join(', ') ?? 'Unknown Author',
          
        ),
        InkWell(
          onTap: () {},
          child: CustomButton(
            onTap: (){
              launchCustomUrl(context, bookModel.volumeInfo.previewLink);
            },
            topRight: Radius.circular(15),
            bottomRight: Radius.circular(15),
            text: "Free Preview",
            textColor: Colors.white,
            color: Colors.deepOrange,
          ),
        ),
      ],
    );
  }
}