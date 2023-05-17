import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailure('Connection timeout');
      case DioErrorType.sendTimeout:
        return ServerFailure('Send timeout');
      case DioErrorType.receiveTimeout:
        return ServerFailure('Receive timeout');
      case DioErrorType.badCertificate:
        return ServerFailure('Bad certificate');
      case DioErrorType.badResponse:
        return ServerFailure.fromBadResponse(
          dioError.response!.statusCode,
          dioError.response!.data,
        );
      case DioErrorType.cancel:
        return ServerFailure('Your response was canceled');
      case DioErrorType.connectionError:
        return ServerFailure('Connection error, please check your internet');
      case DioErrorType.unknown:
        return ServerFailure('please check your internet connection!');
      default:
        return ServerFailure('Ops There was an Error, Please try again');
    }
  }

  factory ServerFailure.fromBadResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, Please try later');
    } else {
      return ServerFailure('Ops There was an Error, Please try again');
    }
  }
}
