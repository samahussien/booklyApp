import 'package:bookly/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/cutom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeHorizontalListview extends StatelessWidget {
  const HomeHorizontalListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksStates>(
        builder: (context, state) {
      if (state is FeaturedBookSuccessStates) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.only(right: kHorizontalPadding),
              child: CustomBookImage(),
            ),
            itemCount: 10,
          ),
        );
      } else if (state is FeaturedBookFailureStates) {
        return CustomErrorWidget(errMessage: state.errMessage);
      } else
{        return const CutomLoadingIndicator();
}    });
  }
}
