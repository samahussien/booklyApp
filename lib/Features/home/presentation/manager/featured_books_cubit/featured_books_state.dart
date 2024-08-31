part of 'featured_books_cubit.dart';

abstract class FeaturedBooksStates extends Equatable {
  const FeaturedBooksStates();

  @override
  List<Object> get props => [];
}

class FeaturedBookInitialStates extends FeaturedBooksStates {}

class FeaturedBookLoadingStates extends FeaturedBooksStates {}

class FeaturedBookSuccessStates extends FeaturedBooksStates {
  final List<BookModel> books;
  const FeaturedBookSuccessStates(
    this.books,
  );
}

class FeaturedBookFailureStates extends FeaturedBooksStates {
  final String errMessage;
  const FeaturedBookFailureStates(
    this.errMessage,
  );
}
