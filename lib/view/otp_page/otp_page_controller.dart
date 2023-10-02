import 'package:booking/routers/router_child/otp_router.dart';

import 'package:get/get.dart';
import 'package:timer_count_down/timer_controller.dart';

class OtpController extends GetxController {
  int timeStart = 30;
  final CountdownController countdownController =
      CountdownController(autoStart: true);

  void onRestStart() {
    countdownController.restart();
    update();
  }

  pageLogin() {
    Get.toNamed(OtpRouter.LOGIN);
  }

  void onBack() {
    Get.back();
  }
}
