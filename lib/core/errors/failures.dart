import 'package:dio/dio.dart';

abstract class Failure {
  final String errmessage;

  Failure({required this.errmessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errmessage});

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errmessage: 'Connection timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
            errmessage: 'Receive timeout in connection with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errmessage: "Connection timeout");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(errmessage: "Request cancelled");
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure(errmessage: "No internet connection");
        }
        return ServerFailure(errmessage: "Unexpected Error, Please try again");
      default:
        return ServerFailure(errmessage: "Something went wrong");
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    switch (statusCode) {
      case 400:
        return ServerFailure(errmessage: response['error']['message']);
      case 401:
        return ServerFailure(errmessage: response['error']['message']);
      case 403:
        return ServerFailure(errmessage: response['error']['message']);
      case 404:
        return ServerFailure(errmessage: response['error']['message']);
      case 500:
        return ServerFailure(errmessage: response['error']['message']);
      default:
        return ServerFailure(errmessage: "Something went wrong");
    }
  }
}
