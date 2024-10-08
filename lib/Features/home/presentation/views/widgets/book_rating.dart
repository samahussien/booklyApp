import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.count});
  final int rating;
  final int count;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: kLightYellow,
          size: 14,
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text("4.8", style: Styles.textStyle16),
        const SizedBox(height: 10),
        Text("(245)", style: Styles.textStyle16.copyWith(color: kFadeColor))
      ],
    );
  }
}
