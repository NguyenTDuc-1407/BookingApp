import 'package:booking/utils/images_path.dart';
import 'package:booking/view/main_pages/home/home_page.dart';
import 'package:get/get.dart';

class BottomBarController extends GetxController {
  final List<Map<String, dynamic>> pages = [
    {
      'label': "Home",
      'icon': ImagesPath.home_bottom,
      'page': HomePage(),
    },
    {
      'label': "Đơn đặt lịch",
      'icon': ImagesPath.search_bottom,
      // 'page': DonDatLichPage(),
    },
    {
      'label': "Tài khoản",
      'icon': ImagesPath.user_bottom,
      // 'page': AccountPage(),
    },
  ];

  DateTime? currentBackPressTime;
  RxInt currentIndex = 0.obs;
  double sizeIcon = 24.0;

  @override
  void onInit() {
    super.onInit();
    if (Get.arguments != null) {
      if (Get.arguments.runtimeType == int) {
        currentIndex.value = Get.arguments as int;
      }
    }
  }

  ///
  /// Change page
  ///
  void onChangedPage(int index) {
    currentIndex.value = index;
    update();
  }

  /// double back press
  Future<bool> onDoubleBack() {
    final DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) > const Duration(seconds: 2)) {
      currentBackPressTime = now;
      // IZIAlert().info(message: "Do you want exit the application.");
      return Future.value(false);
    }
    return Future.value(true);
  }

  @override
  void onClose() {
    currentIndex.close();
    super.onClose();
  }
}
