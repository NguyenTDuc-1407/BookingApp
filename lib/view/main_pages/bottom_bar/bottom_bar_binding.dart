import 'package:booking/view/main_pages/bottom_bar/bottom_bar_controller.dart';
import 'package:booking/view/main_pages/home/home_controller.dart';
import 'package:booking/view/main_pages/profile/profile_controller.dart';
import 'package:booking/view/main_pages/search_list/search_list_controller.dart';
import 'package:get/get.dart';

class BottomBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomBarController>(() => BottomBarController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<SearchListController>(() => SearchListController());
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}
