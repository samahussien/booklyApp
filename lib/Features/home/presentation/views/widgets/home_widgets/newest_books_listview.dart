import 'package:bookly/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/Features/home/presentation/manager/newest_books_cubit/newest_books_states.dart';
import 'package:bookly/Features/home/presentation/views/widgets/newest_books_listview_item.dart.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksStates>(
        builder: (context, state) {
      if (state is NewestBooksSuccessState) {
        return SliverList(
            delegate: SliverChildBuilderDelegate(
          (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: BookListViewItem(
              bookModel: state.books[index],
            ),
          ),
          childCount: state.books.length,
        ));
      } else if (state is NewestBooksFailureState) {
        return SliverToBoxAdapter(
            child: CustomErrorWidget(errMessage: state.errMessage));
      } else {
        return const SliverToBoxAdapter(child: CustomLoadingIndicator());
      }
    });
  }
}




// import 'package:bookly/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
// import 'package:bookly/Features/home/presentation/manager/newest_books_cubit/newest_books_states.dart';
// import 'package:bookly/Features/home/presentation/views/widgets/newest_books_listview_item.dart.dart';
// import 'package:bookly/core/widgets/custom_error_widget.dart';
// import 'package:bookly/core/widgets/custom_loading_indicator.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class NewestBooksListView extends StatelessWidget {
//   const NewestBooksListView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<NewestBooksCubit, NewestBooksStates>(
//         builder: (context, state) {
//      if (state is NewestBooksSuccessState) {
//           return SliverList(
//             delegate: SliverChildBuilderDelegate(
//               (context, index) => Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 10),
//                 child: BookListViewItem(
//                   bookModel: state.books[index],
//                 ),
//               ),
//               childCount: state.books.length,
//             ),
//           );
//         } else if (state is NewestBooksFailureState) {
//           return SliverToBoxAdapter(
//             child: CustomErrorWidget(errMessage: state.errMessage),
//           );
//         } else {
//           return const SliverToBoxAdapter(
//             child: CustomLoadingIndicator(),
//           );
//         }
//       },
//     );
//   }
// }