// import 'package:booking/data/dio/dio_client.dart';
// import 'package:booking/data/dio/exception/api_error_handler.dart';
// import 'package:booking/data/model/auth/auth_resquest.dart';
// import 'package:booking/data/model/base/api_response.dart';
// import 'package:booking/sharedpref/shared_preference_helper.dart';
// import 'package:get_it/get_it.dart';

// class AuthRespository {
//   DioClient? dioClient = GetIt.I.get<DioClient>();
//   SharedPreferenceHelper? sharedPreferenceHelper =
//       GetIt.I.get<SharedPreferenceHelper>();

//   AuthRespository();

//   ///
//   /// Signin with email
//   ///
//   Future<ApiResponse> signin(AuthRequest request) async {
//     try {
//       final response =
//           await dioClient!.post('/auth/login', data: request.toJson());
//       return ApiResponse.withSuccess(response);
//     } catch (e) {
//       return ApiResponse.withError(ApiErrorHandler.getMessage(e));
//     }
//   }
// }
