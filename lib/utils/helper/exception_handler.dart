import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:starter/app/data/models/response/error_response.dart';
import 'package:starter/app/data/values/strings.dart';

class APIException implements Exception {
  final String message;
  final Map<String, String> errors;

  APIException({required this.message, this.errors = const{}});
}

class ExceptionHandler {
  ExceptionHandler._privateConstructor();

  static APIException handleError(Exception error) {
    if (error is DioError) {
      switch (error.type) {
        case DioErrorType.sendTimeout:
          return APIException(message: ErrorMessages.noInternet);
        case DioErrorType.connectTimeout:
          return APIException(message: ErrorMessages.connectionTimeout);
        case DioErrorType.response:
          try {
            final errorResponse = ErrorResponse.fromJson(error.response?.data);
            return APIException(
                message: errorResponse.message, errors: errorResponse.errors);
          } catch (e) {
            return APIException(message: ErrorMessages.networkGeneral);
          }
        default:
          return APIException(message: ErrorMessages.networkGeneral);
      }
    } else {
      return APIException(message: ErrorMessages.networkGeneral);
    }
  }
}

class HandleError {
  HandleError._privateConstructor();

  static handleError(APIException? error) {
    Get.rawSnackbar(message: error?.message ?? ErrorMessages.networkGeneral);
  }
}
