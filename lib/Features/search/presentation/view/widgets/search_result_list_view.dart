
import 'package:flutter/material.dart';

import '../../../../home/presentation/view/widgets/best_seller_list_view.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: BestSellerListView(),
          //child: Text('data'),
        );
      },
    );
  }
}
