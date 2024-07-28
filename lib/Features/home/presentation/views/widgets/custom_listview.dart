import 'package:bookly/Features/home/presentation/views/widgets/custom_list_item.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
      
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(right: kHorizontalPadding),
          child: CustomListItem(),
        ),
        itemCount: 10,
      ),
    );
  }
}
