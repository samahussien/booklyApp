import 'package:bookly/Features/home/presentation/views/widgets/best_seller_listview_item.dart.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_listview.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          CustomListView(),
          SizedBox(
            height: 30,
          ),
          Text(
            "Best Seller",
            style: Styles.textStyle18,
          ),
          BestSellerListViewItem()
        ],
      ),
    );
  }
}

