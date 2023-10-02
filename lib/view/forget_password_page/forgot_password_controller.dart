import 'package:booking/routers/router_child/forget_password_router.dart';
import 'package:get/get.dart';

class ForgotPasswoeController extends GetxController {
  void onBack() {
    Get.back();
  }

  void otpPage() {
    Get.toNamed(ForgetPasswordRouter.OTP);
  }
}
