import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

abstract class Failure {
  String errMessage;
  Failure(
    this.errMessage,
  );
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);
  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timeout with ApiServer");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send timeout with ApiServer");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive timeout with ApiServer");
      case DioExceptionType.badCertificate:
        return ServerFailure("bad certificate error");
      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
            dioError.response!.statusCode, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure("api server was canceled");
      case DioExceptionType.connectionError:
        return ServerFailure("coneection error");
      case DioExceptionType.unknown:
        if (dioError.message!.contains("SocketExeption")) {
          return ServerFailure("no internet connection");
        }
        return ServerFailure("unExpeted error");
    }
  }
  factory ServerFailure.fromBadResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure("Your reuest is not found");
    } else if (statusCode == 500) {
      return ServerFailure("internal server error");
    } else {
      return ServerFailure("error, try again");
    }
  }
}
