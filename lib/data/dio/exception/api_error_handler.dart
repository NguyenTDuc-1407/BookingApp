import 'package:booking/data/model/base/error_response.dart';
import 'package:dio/dio.dart';

mixin ApiErrorHandler {
  static dynamic getMessage(dynamic error) {
    dynamic errorDescription = '';
    if (error is Exception) {
      try {
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.cancel:
              errorDescription = 'Request to API server was cancelled';
              break;
            case DioErrorType.connectionTimeout:
              errorDescription = 'Connection timeout with API server';
              break;
            case DioErrorType.unknown:
              errorDescription =
                  'Connection to API server failed due to internet connection';
              break;
            case DioErrorType.receiveTimeout:
              errorDescription =
                  'Receive timeout in connection with API server';
              break;
            case DioErrorType.badResponse:
              switch (error.response!.statusCode) {
                case 400:
                  final ErrorResponse errors =
                      ErrorResponse.fromJson(error.response!.data);
                  errorDescription = errors.errors[0].detail.toString();
                  break;
                case 404:
                  final ErrorResponse errors =
                      ErrorResponse.fromJson(error.response!.data);
                  errorDescription = errors.errors[0].detail.toString();
                  break;
                case 500:
                  final ErrorResponse errors =
                      ErrorResponse.fromJson(error.response!.data);
                  errorDescription = errors.errors[0].detail.toString();
                  break;
                case 503:
                  final ErrorResponse errors =
                      ErrorResponse.fromJson(error.response!.data);
                  errorDescription = errors.errors[0].detail.toString();
                  break;

                default:
                  final Errors errors = Errors.fromJson(error.response!.data);
                  if (errors.message != '') {
                    errorDescription = errors.message;
                  } else {
                    errorDescription =
                        'Failed to load data - status code: ${error.response!.statusCode}';
                  }
              }
              break;
            case DioErrorType.sendTimeout:
              errorDescription = 'Send timeout with server';
              break;
            case DioErrorType.badCertificate:
              // tODO: Handle this case.
              break;
            case DioErrorType.connectionError:
              // tODO: Handle this case.
              break;
          }
        } else {
          errorDescription = 'Unexpected error occured';
        }
      } on FormatException catch (e) {
        errorDescription = e.toString();
      }
    } else {
      errorDescription = 'is not a subtype of exception';
    }

    // tODO: Edit alert.error
    // show errors
    // Get.snackbar(
    //   "Hey i'm a Errors SnackBar!", // title
    //   errorDescription.toString(), // message
    //   icon: const Icon(Icons.error_outline),
    //   backgroundColor: ColorResources.PINK,
    //   shouldIconPulse: true,
    //   isDismissible: true,
    //   duration: const Duration(seconds: 3),
    // );
    return errorDescription;
  }
}
