// ignore_for_file: constant_identifier_names

import 'package:booking/view/login_page/login_binding.dart';
import 'package:booking/view/login_page/login_page.dart';
import 'package:booking/view/sql_pages/sql_binding.dart';
import 'package:booking/view/sql_pages/sql_page.dart';
import 'package:get/get.dart';

class SqlRouter {
  static const String SQL = '/sql';
  static const String LOGIN = '/login';

  static List<GetPage> list = [
    GetPage(
      name: SQL,
      page: () => SqlPage(),
      binding: SqlBinding(),
    ),
    GetPage(
      name: LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
  ];
}
