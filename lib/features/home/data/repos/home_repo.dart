import 'package:dartz/dartz.dart';
import 'package:readify_app/core/errors/failure.dart';
import 'package:readify_app/features/home/data/model/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure,List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure,List<BookModel>>> fetchSimilarBooks(final String categories);
}