import 'package:bookly/Features/home/presentation/manager/similar_books_cubit/similar_book_cubit.dart';
import 'package:bookly/Features/home/presentation/manager/similar_books_cubit/similar_book_state.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBookCubit, SimilarBookState>(
      builder: (context, state) {
        if (state is SimilarBookSuccessState) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 15),
                child: CustomBookItem(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks?.thumbnail ??
                            ""),
              ),
              itemCount: state.books.length,
            ),
          );
        } else if (state is SimilarBookFailureState) {
          return CustomErrorWidget(errMessage: state.errMessage);
        }
        return const CustomLoadingIndicator();
      },
    );
  }
}
