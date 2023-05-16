import 'package:readify_app/features/home/data/model/book_model/book_model.dart';

abstract class SearchStates {}

class SearchStateInitial extends SearchStates{}

class FetchBooksLoading extends SearchStates{}

class FetchBooksSuccess extends SearchStates{}

class FetchBooksFailure extends SearchStates{
  final String message;

  FetchBooksFailure(this.message);
}

class SearchForBooksLoading extends SearchStates{}

class SearchForBooksSuccess extends SearchStates{}
