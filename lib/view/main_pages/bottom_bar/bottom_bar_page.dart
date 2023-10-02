// ignore_for_file: use_key_in_widget_constructors

import 'package:booking/helper/dimensions.dart';
import 'package:booking/helper/size.dart';
import 'package:booking/view/main_pages/bottom_bar/bottom_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBarPage extends GetView<BottomBarController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: BottomBarController(),
        builder: (BottomBarController controller) => Scaffold(
              backgroundColor: Colors.white,
              body: Obx(() => controller.pages[controller.currentIndex.value]
                  ['page'] as Widget),
              bottomNavigationBar: bottomNavigator(context),
            ));
  }

  Widget onSelected(BuildContext context,
      {required String title, required String icon, required int index}) {
    return Material(
      child: GestureDetector(
        onTap: () => controller.onChangedPage(index),
        child: SizedBox(
          width: MyDimensions.mySize.width / controller.pages.length,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder(
                builder: (BottomBarController controller) {
                  return SizedBox(
                    height: MyDimensions.SPACE_SIZE_5X * 1.2,
                    child: Image.asset(
                      icon,
                      color: controller.currentIndex.value == index
                          ? const Color.fromRGBO(24, 138, 144, 1)
                          : const Color.fromARGB(255, 17, 17, 17),
                    ),
                  );
                },
              ),
              Obx(
                () => Container(
                  margin: EdgeInsets.only(top: MyDimensions.ONE_UNIT_SIZE * 5),
                  height: MyDimensions.ONE_UNIT_SIZE * 8,
                  width: MyDimensions.ONE_UNIT_SIZE * 8,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(MyDimensions.BORDER_RADIUS_7X),
                    color: controller.currentIndex.value == index
                        ? const Color.fromRGBO(24, 138, 144, 1)
                        : Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      title,
                      style: TextStyle(
                        color: controller.currentIndex.value == index
                            ? const Color.fromRGBO(24, 138, 144, 1)
                            : Colors.white,
                        fontSize: MyDimensions.SPACE_SIZE_2X,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomNavigator(BuildContext context) {
    return BottomAppBar(
      clipBehavior: Clip.hardEdge,
      // color: Colors.red,
      // shape: const CircularNotchedRectangle(),
      child: SizedBox(
        height: MyDimensions.SPACE_SIZE_5X * 3,
        width: MyDimensions.mySize.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...List.generate(
              controller.pages.length,
              (index) {
                return Container(
                  child: onSelected(
                    context,
                    title: controller.pages[index]['label'].toString(),
                    icon: controller.pages[index]['icon'].toString(),
                    index: index,
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
