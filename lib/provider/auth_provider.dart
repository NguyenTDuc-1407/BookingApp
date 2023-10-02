// import 'package:booking/data/model/auth/auth_response.dart';
// import 'package:booking/data/model/auth/auth_resquest.dart';
// import 'package:booking/data/model/base/api_response.dart';
// import 'package:booking/data/reponsitories/auth_respository.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get_it/get_it.dart';

// class AuthProvider with ChangeNotifier {
//   AuthRespository? authRespository = GetIt.I.get<AuthRespository>();

//   AuthProvider();

//   ///
//   /// login with email
//   ///
//   Future<void> signin({
//     required AuthRequest request,
//     required Function(AuthResponse auth) onSuccess,
//     required Function(dynamic error) onError,
//   }) async {
//     final ApiResponse apiResponse = await authRespository!.signin(request);
//     if (apiResponse.response.statusCode == null) {
//       onError(apiResponse.error);
//     }
//     if (apiResponse.response.statusCode! >= 200 &&
//         apiResponse.response.statusCode! <= 300) {
//       // call back data success
//       final results = apiResponse.response.data as dynamic;
//       final AuthResponse authResponse =
//           AuthResponse.fromMap(results as Map<String, dynamic>);
//       onSuccess(authResponse);
//     } else {
//       onError("abcvaical${apiResponse.error}");
//     }
//   }
// }
