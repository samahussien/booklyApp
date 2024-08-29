import 'package:bookly/Features/home/presentation/views/widgets/book_actions.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_details_app_bar.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;

    return  Padding(
      
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [const CustomDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal:width*.17),
          child: const CustomBookImage(),
        ),
        const SizedBox(height: 43,),
        Text("The Jungle Book",style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),),
        const SizedBox(height: 6,),
        Opacity(opacity: 0.70,child: Text("Rudyard Kipling",style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),)),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center,),
        const SizedBox(height: 37,),
        const BooksAction()
        ],
      ),
    );
  }
}


