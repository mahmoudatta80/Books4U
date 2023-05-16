import 'package:dartz/dartz.dart';
import 'package:readify_app/core/errors/failure.dart';
import 'package:readify_app/core/functions/api_implement.dart';
import 'package:readify_app/core/utils/api_service.dart';
import 'package:readify_app/core/utils/end_points.dart';
import 'package:readify_app/features/home/data/model/book_model/book_model.dart';
import 'package:readify_app/features/home/data/repos/home_repo.dart';

class HomeRepoImplementation implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplementation(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    return booksImplementation(apiService, EndPoints.featureBooks);
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    return booksImplementation(apiService, EndPoints.newestBooks);
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(final String categories) async{
    return booksImplementation(apiService, 'volumes?Filtering=free-ebooks&q=$categories&Sorting=newest');
  }
}