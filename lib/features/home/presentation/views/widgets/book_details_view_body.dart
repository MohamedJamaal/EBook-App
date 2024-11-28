import 'package:ebookapp/core/utils/styles.dart';
import 'package:ebookapp/core/widgets/custom_button.dart';
import 'package:ebookapp/features/home/presentation/views/widgets/book_rating.dart';
import 'package:ebookapp/features/home/presentation/views/widgets/books_action.dart';
import 'package:ebookapp/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:ebookapp/features/home/presentation/views/widgets/custom_Book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.15),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 43,
          ),
          const Text(
            'The Jungle Book',
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: 0.7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 37,
          ),
          const BooksAction(),
        ],
      ),
    );
  }
}
