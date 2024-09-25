import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_details_widgets/book_details_sections/book_details_section.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_details_widgets/book_details_sections/similar_books_section.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_details_widgets/book_details_sections/custom_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const CustomDetailsAppBar(),
                  BookDetailsSection(
                    book: bookModel,
                  ),
                  const Expanded(
                      child: SizedBox(
                    height: 10,
                  )),
                  const SimilarBooksSection()
                ],
              ),
            ))
      ],
    );
  }
}
