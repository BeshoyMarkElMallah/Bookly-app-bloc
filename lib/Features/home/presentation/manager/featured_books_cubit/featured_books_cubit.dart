import 'package:bloc/bloc.dart';
import 'package:bookly_bloc/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_bloc/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> getFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailure(message: failure.errmessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books: books));
    });
  }
}
