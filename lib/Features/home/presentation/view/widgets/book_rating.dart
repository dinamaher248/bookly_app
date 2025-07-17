import 'package:flutter/material.dart';

import '../../../../../utils/custom_text_widget.dart';

class BookRating extends StatelessWidget {
  BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
     this.avgRating,
  });
  MainAxisAlignment mainAxisAlignment;
  final num rating;
  final num? avgRating;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(Icons.star, color: Colors.amber, size: 16),
        const SizedBox(width: 5),
        CustomTextWidget(
          text: rating.toString(),
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        const SizedBox(width: 5),
        Opacity(
          opacity: 0.7,
          child: CustomTextWidget(
            text: avgRating != null ? '($avgRating)' : '',
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
