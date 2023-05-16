import 'package:readify_app/features/home/data/model/book_model/book_model.dart';

abstract class FeaturedBooksStates{}

class FeaturedBooksInitial extends FeaturedBooksStates{}

class FeaturedBooksLoading extends FeaturedBooksStates{}

class FeaturedBooksSuccess extends FeaturedBooksStates{
  final List<BookModel> books;

  FeaturedBooksSuccess(this.books);
}

class FeaturedBooksFailure extends FeaturedBooksStates{
  final String errorMessage;

  FeaturedBooksFailure(this.errorMessage);
}
