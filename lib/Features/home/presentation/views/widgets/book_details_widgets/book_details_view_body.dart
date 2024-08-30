import 'package:bookly/Features/home/presentation/views/widgets/book_details_widgets/book_details_sections/book_details_section.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_details_widgets/book_details_sections/similar_books_section.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_details_widgets/book_details_sections/custom_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  CustomDetailsAppBar(),
                  BookDetailsSection(),
                  Expanded(
                      child: SizedBox(
                    height: 10,
                  )),
                  SimilarBooksSection()
                ],
              ),
            ))
      ],
    );
  }
}
