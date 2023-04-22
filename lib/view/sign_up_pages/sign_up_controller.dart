import 'package:booking/routers/router_child/login_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  var checkInputEmail = TextEditingController();
  var checkInputPassword = TextEditingController();
  var checkInputConfiPass = TextEditingController();
  var inputPassword = true.obs;
  var inputConfiPass = true.obs;
  var iconConfiPass = false;
  var iconPassword = false;

  void hideInputPassword() {
    inputPassword.value = !inputPassword.value;

  }
  void hideInputConfipass(){
    inputConfiPass.value = !inputConfiPass.value;
  }

  void actionIconPassword() {
    if (checkInputPassword.text == '') {
      iconPassword = false;
    }
    if (checkInputPassword.text != '') {
      iconPassword = true;
    }
    if (checkInputConfiPass.text == '') {
      iconConfiPass = false;
    }
    if (checkInputConfiPass.text != '') {
      iconConfiPass = true;
    }
    update();
  }

  void onLoginPage() {
    Get.toNamed(LoginRouter.LOGIN);
  }
}
