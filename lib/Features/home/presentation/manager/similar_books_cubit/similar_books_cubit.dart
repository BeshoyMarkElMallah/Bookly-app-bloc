import 'package:bloc/bloc.dart';
import 'package:bookly_bloc/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_bloc/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void> getSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failure) {
      emit(SimilarBooksFailure(message: failure.errmessage));
    }, (books) {
      emit(SimilarBooksSuccess(books: books));
    });
  }
}
