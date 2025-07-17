import 'package:bookly_app/Features/search/presentation/view/widgets/custom_search_text_field.dart';
import 'package:bookly_app/Features/search/presentation/view/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/custom_text_widget.dart' show CustomTextWidget;

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: CustomSearchTextField(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0,top: 20),
          child: CustomTextWidget(
            text: 'Search result',
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 16),
        Expanded(child: SearchResultListView()),
      ],
    );
  }
}
