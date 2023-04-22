import 'package:booking/data/dio/dio_client.dart';
import 'package:booking/data/model/auth/auth_resquest.dart';
import 'package:booking/helper/validate.dart';
import 'package:booking/provider/auth_provider.dart';
import 'package:booking/routers/router_child/login_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

class LoginController extends GetxController {
  final AuthProvider authProvider = GetIt.I.get<AuthProvider>();
  final DioClient? dioClient = GetIt.I.get<DioClient>();

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
    onSignIn();
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

  ///
  /// on sign in
  ///
  Future<void> onSignIn() async {
    final AuthRequest loginRequest = AuthRequest();
    loginRequest.email = MyValidate.nullOrEmpty(email) ? null : email;
    loginRequest.password = MyValidate.nullOrEmpty(password) ? null : password;

    authProvider.signin(
      request: loginRequest,
      onSuccess: (account) async {
        if (!MyValidate.nullOrEmpty(account)) {
          // Save accout logined
          // _handleSaveAccountLogined(account: account);
          // sl<SharedPreferenceHelper>().setProfile(account.user!.id.toString());

          // Hide loader overlay
          // onHideLoaderOverlay();
          // _onGoToHomePage();
        }
        // EasyLoading.dismiss();
      },
      onError: (onError) {
        // print("Error");
      },
    );
  }
}
