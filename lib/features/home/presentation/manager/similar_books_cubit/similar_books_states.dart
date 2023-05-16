import 'package:readify_app/features/home/data/model/book_model/book_model.dart';

abstract class SimilarBooksStates{}

class SimilarBooksInitial extends SimilarBooksStates{}

class SimilarBooksLoading extends SimilarBooksStates{}

class SimilarBooksSuccess extends SimilarBooksStates{
  final List<BookModel> books;

  SimilarBooksSuccess(this.books);
}

class SimilarBooksFailure extends SimilarBooksStates{
  final String errorMessage;

  SimilarBooksFailure(this.errorMessage);
}
