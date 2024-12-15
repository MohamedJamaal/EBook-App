import 'package:ebookapp/constants.dart';
import 'package:ebookapp/core/utils/app_router.dart';
import 'package:ebookapp/core/utils/assets.dart';
import 'package:ebookapp/core/utils/styles.dart';
import 'package:ebookapp/features/home/data/models/book_model/book_model.dart';
import 'package:ebookapp/features/home/presentation/views/widgets/book_rating.dart';
import 'package:ebookapp/features/home/presentation/views/widgets/custom_Book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.KBookDetailsView,
          extra: bookModel,
        );
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImage(
                imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: KGtSectraFine),
                    ),
                  ),
                  Text(
                    bookModel.volumeInfo.authors?.isNotEmpty == true
                        ? bookModel.volumeInfo.authors![0].toUpperCase()
                        : 'Unknown Author',
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      BookRating(
                        rating: bookModel.volumeInfo.language ?? '5',
                        count: bookModel.volumeInfo.pageCount ?? 124,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
