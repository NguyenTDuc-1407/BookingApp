// ignore_for_file: constant_identifier_names

import 'package:booking/view/login_page/login_binding.dart';
import 'package:booking/view/login_page/login_page.dart';
import 'package:booking/view/main_pages/bottom_bar/bottom_bar_binding.dart';
import 'package:booking/view/main_pages/bottom_bar/bottom_bar_page.dart';
import 'package:booking/view/sign_up_pages/sign_up_binding.dart';
import 'package:booking/view/sign_up_pages/sign_up_page.dart';
import 'package:get/get.dart';

class LoginRouter {
  static const String LOGIN = '/login';
  static const String SIGNUP = '/sign_up';
  static const String MAIN = '/main/page';
  static List<GetPage> list = [
    GetPage(
      name: LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: SIGNUP,
      page: () => SignUpPage(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: MAIN,
      page: () => BottomBarPage(),
      binding: BottomBarBinding(),
    ),
  ];
}
