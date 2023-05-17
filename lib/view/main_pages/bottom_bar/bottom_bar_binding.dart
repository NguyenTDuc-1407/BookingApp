import 'package:booking/view/main_pages/bottom_bar/bottom_bar_controller.dart';
import 'package:booking/view/main_pages/home/home_controller.dart';
import 'package:get/get.dart';

class BottomBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomBarController>(() => BottomBarController());
    Get.lazyPut<HomeController>(() => HomeController());
    // Get.lazyPut<DonDatLichController>(() => DonDatLichController());
    // Get.lazyPut<AccountController>(() => AccountController());
  }
}
