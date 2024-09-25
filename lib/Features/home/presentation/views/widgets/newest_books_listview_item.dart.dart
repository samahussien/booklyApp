import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          GoRouter.of(context).push(AppRouterPaths.bookDetailsViewPath,extra: bookModel),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookItem(imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail?? ""),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(bookModel.volumeInfo.title!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style:
                            Styles.textStyle20.copyWith(fontFamily: kGTSectra)),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                   Text(bookModel.volumeInfo.authors![0], style: Styles.textStyle14),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text("Free",
                          style: Styles.textStyle20
                              .copyWith(fontWeight: FontWeight.bold)),
                      const Spacer(),
                       BookRating(rating:0,count: bookModel.volumeInfo.pageCount!,)
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
