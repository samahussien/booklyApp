part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBookInitial extends FeaturedBooksState {}

class FeaturedBookLoading extends FeaturedBooksState {}

class FeaturedBooksuccess extends FeaturedBooksState {
  final List<BookModel> books;
  const FeaturedBooksuccess(
    this.books,
  );
}

class FeaturedBookFailure extends FeaturedBooksState {
  final String errMessage;
  const FeaturedBookFailure(
    this.errMessage,
  );
}
