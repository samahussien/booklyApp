import 'package:bookly/Features/home/presentation/views/widgets/best_seller_listview.dart';
import 'package:bookly/Features/home/presentation/views/widgets/best_seller_listview_item.dart.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_listview.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
                child: CustomAppBar(),
              ),
              CustomListView(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
                child: Text(
                  "Best Seller",
                  style: Styles.textStyle18,
                ),
              ),
            ],
          ),
        )
     ,SliverFillRemaining(child:Padding(
       padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
       child: BestSellerListView(),
     ) ,)
      ],
    );
   
  }
}
