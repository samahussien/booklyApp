import "package:bookly/Features/home/data/repos/home_repo.dart";
import "package:bookly/Features/home/presentation/manager/similar_books_cubit/similar_book_state.dart";
import "package:flutter_bloc/flutter_bloc.dart";

class SimilarBookCubit extends Cubit<SimilarBookState> {
  SimilarBookCubit(this.homeRepo) : super(SimilarBookInitialState());
    final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBookloadingState());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failure) {
      emit(SimilarBookFailureState(failure.errMessage));
    }, (books) {
      emit(SimilarBookSuccessState(books));
    });
  }
}
