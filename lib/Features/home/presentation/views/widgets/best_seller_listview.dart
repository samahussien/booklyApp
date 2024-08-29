
import 'package:bookly/Features/home/presentation/views/widgets/best_seller_listview_item.dart.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: BestSellerListViewItem(),
      ),
      itemCount: 10,
    );
  }
}
