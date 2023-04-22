import 'package:booking/helper/dimensions.dart';
import 'package:booking/utils/images_path.dart';
import 'package:booking/view/sql_pages/sql_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

// ignore: use_key_in_widget_constructors
class SqlPage extends GetView {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SqlController(),
      builder: (SqlController controller) => Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Colors.black,
              ],
            ),
          ),
          child: SizedBox(
            height: MyDimensions.mySize.height,
            child: Column(
              children: [
                SizedBox(
                  height: MyDimensions.mySize.height * 0.93,
                  width: MyDimensions.mySize.width,
                  child: PageView.builder(
                    onPageChanged: (value) => controller.onPageImage(value),
                    itemCount: controller.imageList.length,
                    controller: controller.pageController,
                    itemBuilder: (context, index) {
                      return Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          SizedBox(
                            height: MyDimensions.mySize.height * 0.93,
                            width: MyDimensions.mySize.width,
                            child: ClipRRect(
                              child: Image.asset(
                                controller.imageList[index]['image'].toString(),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                bottom: MyDimensions.SPACE_SIZE_5X * 3,
                                left: MyDimensions.SPACE_SIZE_5X * 1.5,
                                right: MyDimensions.SPACE_SIZE_5X * 1.5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: MyDimensions.SPACE_SIZE_5X * 8,
                                  child: Text(
                                    controller.imageList[index]["content"]
                                        .toString(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            MyDimensions.FONT_SIZE_H6 * 1.5),
                                  ),
                                ),
                                if (controller.currentIndex != 2)
                                  InkWell(
                                    onTap: () => controller.onNext(),
                                    child: Container(
                                      padding: EdgeInsets.all(
                                          MyDimensions.SPACE_SIZE_5X),
                                      height: MyDimensions.SPACE_SIZE_5X * 3.5,
                                      width: MyDimensions.SPACE_SIZE_5X * 3.5,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              MyDimensions.BORDER_RADIUS_6X),
                                          color: const Color.fromARGB(
                                              255, 74, 169, 188)),
                                      child: Image.asset(
                                        ImagesPath.arrow_right,
                                      ),
                                    ),
                                  ),
                                if (controller.currentIndex == 2)
                                  InkWell(
                                    onTap: () => controller.onNext(),
                                    child: Container(
                                      height: MyDimensions.SPACE_SIZE_5X * 3.5,
                                      width: MyDimensions.SPACE_SIZE_5X * 3.5,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              MyDimensions.BORDER_RADIUS_6X),
                                          color: const Color.fromARGB(
                                              255, 74, 169, 188)),
                                      child: Icon(
                                        Icons.check,
                                        size: MyDimensions.ONE_UNIT_SIZE * 70,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                bottom: MyDimensions.SPACE_SIZE_5X),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ...List.generate(
                                  controller.imageList.length,
                                  (index) => Container(
                                    width: controller.currentIndex == index
                                        ? MyDimensions.ONE_UNIT_SIZE * 15
                                        : MyDimensions.ONE_UNIT_SIZE * 15,
                                    height: controller.currentIndex == index
                                        ? MyDimensions.ONE_UNIT_SIZE * 15
                                        : MyDimensions.ONE_UNIT_SIZE * 15,
                                    margin: EdgeInsets.symmetric(
                                      horizontal: MyDimensions.SPACE_SIZE_1X,
                                    ),
                                    decoration: BoxDecoration(
                                      shape: controller.currentIndex == index
                                          ? BoxShape.rectangle
                                          : BoxShape.rectangle,
                                      border: controller.currentIndex == index
                                          ? Border.all(
                                              color: const Color.fromRGBO(
                                                  74, 169, 188, 100))
                                          : Border.all(
                                              color: const Color.fromRGBO(
                                                  74, 169, 188, 100)),
                                      color: controller.currentIndex == index
                                          ? const Color.fromRGBO(
                                              74, 169, 188, 100)
                                          : const Color.fromRGBO(0, 0, 0, 100),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: MyDimensions.SPACE_SIZE_5X,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
