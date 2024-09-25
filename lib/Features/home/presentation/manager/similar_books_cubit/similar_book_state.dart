import 'package:bookly/Features/home/data/models/book_model/book_model.dart';

abstract class SimilarBookState {}

class SimilarBookInitialState extends SimilarBookState {}

class SimilarBookSuccessState extends SimilarBookState {
  final List<BookModel> books;

  SimilarBookSuccessState(this.books);
}

class SimilarBookFailureState extends SimilarBookState {


    final String errMessage;

  SimilarBookFailureState(this.errMessage);
}

class SimilarBookloadingState extends SimilarBookState {}
