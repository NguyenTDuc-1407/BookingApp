import 'package:booking/routers/router_child/forget_password_router.dart';
import 'package:booking/routers/router_child/login_router.dart';
import 'package:booking/routers/router_child/otp_router.dart';
import 'package:booking/routers/router_child/sql_router.dart';
import 'package:get/get.dart';

class AppPage {
  static List<GetPage> list = [
    ...SqlRouter.list,
    ...LoginRouter.list,
    ...ForgetPasswordRouter.list,
    ...OtpRouter.list,
  ];
}
