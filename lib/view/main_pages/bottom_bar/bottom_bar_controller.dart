import 'package:booking/utils/images_path.dart';
import 'package:booking/view/main_pages/home/home_page.dart';
import 'package:booking/view/main_pages/profile/profile_page.dart';
import 'package:booking/view/main_pages/search_list/search_list_page.dart';
import 'package:get/get.dart';

class BottomBarController extends GetxController {
  DateTime? currentBackPressTime;
  RxInt currentIndex = 0.obs;
  double sizeIcon = 24.0;

  final List<Map<String, dynamic>> pages = [
    {
      'label': "",
      'icon': ImagesPath.home_bottom,
      'page': HomePage(),
    },
    {
      'label': "",
      'icon': ImagesPath.search_bottom,
      'page': SearchListPage(),
    },
    {
      'label': "",
      'icon': ImagesPath.user_bottom,
      'page': ProfilePage(),
    },
  ];

  // @override
  // void onInit() {
  //   super.onInit();
  //   if (Get.arguments != null) {
  //     if (Get.arguments.runtimeType == int) {
  //       currentIndex.value = Get.arguments as int;
  //     }
  //   }
  // }

  ///
  /// Change page
  ///
  void onChangedPage(int index) {
    currentIndex.value = index;
    update();
  }

  @override
  void onClose() {
    currentIndex.close();
    super.onClose();
  }
}
