import 'package:bookly/Features/home/presentation/views/widgets/best_seller_listview.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_home_appbar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_listview.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
                child: CustomHomeAppbar(),
              ),
              CustomListView(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
                child: Text(
                  "Best Seller",
                  style: Styles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
