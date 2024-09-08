import 'package:bookly/Features/home/presentation/views/widgets/home_widgets/newest_books_listview.dart';
import 'package:bookly/Features/home/presentation/views/widgets/home_widgets/custom_home_appbar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/home_widgets/featured_books_listview.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
                child: CustomHomeAppbar(),
              ),
              FeaturedBooksListview(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
                child: Text(
                  "Newest books",
                  style: Styles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: NewestBooksListView(),
          ),
        )
      ],
    );
  }
}
