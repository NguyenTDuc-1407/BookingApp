// ignore_for_file: constant_identifier_names

import 'package:booking/view/forget_password_page/forgot_password_binding.dart';
import 'package:booking/view/forget_password_page/forgot_password_page.dart';
import 'package:booking/view/login_page/login_binding.dart';
import 'package:booking/view/login_page/login_page.dart';
import 'package:booking/view/otp_page/otp_page.dart';
import 'package:booking/view/otp_page/otp_page_binding.dart';
import 'package:get/get.dart';

class ForgetPasswordRouter {
  static const String LOGIN = '/login';
  static const String FORGETPASSWORD = '/forget-password';
  static const String OTP = '/otp';
  static List<GetPage> list = [
    GetPage(
      name: LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: FORGETPASSWORD,
      page: () => ForgotPasswordPage(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: OTP,
      page: () => OtpPage(),
      binding: OtpBinding(),
    ),
  ];
}
