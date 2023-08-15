part of 'featured_books_cubit.dart';

class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String message;

  const FeaturedBooksFailure({required this.message});

  @override
  List<Object> get props => [message];
}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;

  const FeaturedBooksSuccess({required this.books});

  @override
  List<Object> get props => [books];
}
