import 'package:bookly/Features/home/data/models/book_model/book_model.dart';

abstract class NewestBooksStates {}

class NewestBooksInitialState extends NewestBooksStates {}

class NewestBooksLoadingState extends NewestBooksStates {}

class NewestBooksSuccessState extends NewestBooksStates {
  final List<BookModel> books;

  NewestBooksSuccessState(this.books);
}

class NewestBooksFailureState extends NewestBooksStates {
  final String errMessage;

  NewestBooksFailureState(this.errMessage);

}
