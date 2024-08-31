part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBookInitialStates extends FeaturedBooksState {}

class FeaturedBookLoadingStates extends FeaturedBooksState {}

class FeaturedBookSuccessStates extends FeaturedBooksState {
  final List<BookModel> books;
  const FeaturedBookSuccessStates(
    this.books,
  );
}

class FeaturedBookFailureStates extends FeaturedBooksState {
  final String errMessage;
  const FeaturedBookFailureStates(
    this.errMessage,
  );
}
