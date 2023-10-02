import 'package:booking/view/forget_password_page/forgot_password_controller.dart';
import 'package:get/get.dart';

class ForgotPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotPasswoeController>(() => ForgotPasswoeController());
  }
}
