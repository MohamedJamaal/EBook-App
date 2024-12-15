import 'package:ebookapp/core/utils/styles.dart';
import 'package:ebookapp/features/home/data/models/book_model/book_model.dart';
import 'package:ebookapp/features/home/presentation/views/widgets/book_rating.dart';
import 'package:ebookapp/features/home/presentation/views/widgets/books_action.dart';
import 'package:ebookapp/features/home/presentation/views/widgets/custom_Book_image.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.book});

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.15),
            child: CustomBookImage(
              imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? '',
            ),
          ),
          const SizedBox(
            height: 43,
          ),
          Text(
            book.volumeInfo.title ?? '',
            style: Styles.textStyle30,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: 0.7,
            child: Text(
              book.volumeInfo.authors?[0] ?? '',
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
            rating: '5 ',
            count: 123,
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
