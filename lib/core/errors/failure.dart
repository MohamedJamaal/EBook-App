import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with api server ');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with api server ');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with api server ');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request was canceled');
      case DioExceptionType.connectionError:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('No internet connection');
        }
        return ServerFailure('Unexpected error, please try again');
      default:
        return ServerFailure('Unexpected error, please try again');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request was not found, please try again');
    } else if (statusCode == 500) {
      return ServerFailure('Server Error , please try again later');
    } else {
      return ServerFailure('Ooops, there was a problem, please try again');
    }
  }
}
