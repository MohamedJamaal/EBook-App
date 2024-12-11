import 'package:ebookapp/core/utils/styles.dart';
import 'package:ebookapp/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:ebookapp/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 16,
          ),
          Text(
            'Search Results',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: SearchResultLisView(),
          ),
        ],
      ),
    );
  }
}

class SearchResultLisView extends StatelessWidget {
  const SearchResultLisView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            // child: BookListViewItem(),
            child: Text('data'));
      },
    );
  }
}
