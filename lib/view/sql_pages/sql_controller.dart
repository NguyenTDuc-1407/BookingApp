import 'package:booking/routers/router_child/sql_router.dart';
import 'package:booking/utils/images_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SqlController extends GetxController {
  // vi tri image
  int currentIndex = 0;

// list image slide
  List imageList = [
    {"id": 1, "image": ImagesPath.sql1, "content": "Explore your interests"},
    {"id": 2, "image": ImagesPath.sql2, "content": "Find your Travel Mate"},
    {"id": 3, "image": ImagesPath.sql3, "content": "Find your Travel Mate"},
  ];

  final PageController pageController = PageController();

// slide image
  void onPageImage(int index) {
    currentIndex = index;
    update();
  }

  void onNext() async {
    if (currentIndex == imageList.length - 1) {
      Get.toNamed(SqlRouter.LOGIN);
    } else {
      currentIndex = currentIndex + 1;
      await pageController.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }
}
