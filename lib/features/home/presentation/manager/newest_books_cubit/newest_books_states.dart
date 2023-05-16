import 'package:readify_app/features/home/data/model/book_model/book_model.dart';

abstract class NewestBooksStates{}

class NewestBooksInitial extends NewestBooksStates{}

class NewestBooksLoading extends NewestBooksStates{}

class NewestBooksSuccess extends NewestBooksStates{
  final List<BookModel> books;

  NewestBooksSuccess(this.books);
}

class NewestBooksFailure extends NewestBooksStates{
  final String errorMessage;

  NewestBooksFailure(this.errorMessage);
}
