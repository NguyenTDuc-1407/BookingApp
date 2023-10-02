import 'package:booking/routers/router_child/login_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var checkInputEmail = TextEditingController();
  var checkInputPassword = TextEditingController();
  var inputPassword = true.obs;
  var checkBox = true.obs;
  var iconPassword = false;
  String email = '';
  String password = '';

  @override
  void onInit() {
    checkInputPassword.text;
    inputPassword.value;
    super.onInit();
    // onSignIn();
  }

  void hideInputPassword() {
    inputPassword.value = !inputPassword.value;
  }

  void actionCheckBox() {
    checkBox.value = !checkBox.value;
  }

  void actionIconPassword() {
    if (checkInputPassword.text == '') {
      iconPassword = false;
    } else {
      iconPassword = true;
    }
    update();
  }

  void onNextHomePage() {
    Get.toNamed(LoginRouter.MAIN);
  }

  void onNextPage() {
    Get.toNamed(LoginRouter.SIGNUP);
  }

  void onNextPageForget() {
    Get.toNamed(LoginRouter.FORGETPASSWORD);
  }
}
