import 'package:bookly/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class HomeHorizontalListview extends StatelessWidget {
  const HomeHorizontalListview({super.key});

  @override
  Widget build(BuildContext context) {
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
  }
}
