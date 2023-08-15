part of 'newest_books_cubit.dart';

class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

class NewestBooksInitial extends NewestBooksState {}

class NewestBooksLoading extends NewestBooksState {}

class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> books;

  const NewestBooksSuccess({required this.books});

  @override
  List<Object> get props => [books];
}

class NewestBooksFailure extends NewestBooksState {
  final String message;

  const NewestBooksFailure({required this.message});

  @override
  List<Object> get props => [message];
}
