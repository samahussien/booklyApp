import 'package:bookly/Features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [  CustomAppBar()],
    );
  }

 
}
