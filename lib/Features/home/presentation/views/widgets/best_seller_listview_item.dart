import 'package:bookly_bloc/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_bloc/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_bloc/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_bloc/constants.dart';
import 'package:bookly_bloc/core/utils/app_router.dart';
import 'package:bookly_bloc/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImage(
                imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? ''),
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
                          .copyWith(fontFamily: kGtSectraFine),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookModel.volumeInfo.authors![0],
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        "Free",
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Bookrating(
                          rating: bookModel.volumeInfo.maturityRating ?? "0",
                          count: bookModel.volumeInfo.pageCount ?? 0),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
