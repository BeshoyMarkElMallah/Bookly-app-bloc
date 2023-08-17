part of 'similar_books_cubit.dart';

class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksLoading extends SimilarBooksState {}

class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> books;

  const SimilarBooksSuccess({required this.books});

  @override
  List<Object> get props => [books];
}

class SimilarBooksFailure extends SimilarBooksState {
  final String message;

  const SimilarBooksFailure({required this.message});

  @override
  List<Object> get props => [message];
}
