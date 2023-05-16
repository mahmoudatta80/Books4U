import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:readify_app/core/errors/failure.dart';
import 'package:readify_app/core/utils/api_service.dart';
import 'package:readify_app/features/home/data/model/book_model/book_model.dart';

Future<Either<Failure, List<BookModel>>> booksImplementation(ApiService apiService,String endPoint) async{
  try {
    var data = await apiService.fetchBooks(endPoint: endPoint);
    List<BookModel> books = [];
    for (var book in data['items']) {
      books.add(
        BookModel.fromJson(book),
      );
    }
    return Right(books);
  } catch (error) {
    if (error is DioError) {
      return Left(
        ServerFailure.fromDioError(
          error,
        ),
      );
    }
    return Left(
      ServerFailure(error.toString()),
    );
  }
}
