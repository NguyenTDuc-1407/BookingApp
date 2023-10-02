// ignore_for_file: file_names

import 'package:booking/helper/dimensions.dart';
import 'package:booking/utils/images_path.dart';
import 'package:booking/view/main_pages/profile/Visited/Visited_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VisitedPage extends StatefulWidget {
  const VisitedPage({super.key});

  @override
  State<VisitedPage> createState() => _VisitedPageState();
}

class _VisitedPageState extends State<VisitedPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: VisitedController(),
      builder: (VisitedController controller) => Scaffold(
        body: Container(
          margin: EdgeInsets.only(
              top: MyDimensions.SPACE_SIZE_1X * 0.5,
              left: MyDimensions.SPACE_SIZE_2X,
              right: MyDimensions.SPACE_SIZE_2X),
          child: GridView(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: (MyDimensions.ONE_UNIT_SIZE /
                    MyDimensions.ONE_UNIT_SIZE *
                    0.8),
                crossAxisCount: 3,
                crossAxisSpacing: MyDimensions.SPACE_SIZE_1X,
                mainAxisSpacing: MyDimensions.SPACE_SIZE_4X),
            children: [
              ...List.generate(
                controller.imageList.length,
                (index) => Center(
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              MyDimensions.BORDER_RADIUS_3X),
                        ),
                        child: Image.asset(
                          controller.imageList[index]["image"],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: MyDimensions.SPACE_SIZE_5X * 8,
                        width: MyDimensions.SPACE_SIZE_5X * 5.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              MyDimensions.BORDER_RADIUS_3X),
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black,
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: MyDimensions.SPACE_SIZE_5X * 1.5,
                        width: MyDimensions.SPACE_SIZE_5X * 3.5,
                        margin: EdgeInsets.only(
                            left: MyDimensions.SPACE_SIZE_5X * 1.7,
                            bottom: MyDimensions.SPACE_SIZE_5X * 6.5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                    MyDimensions.BORDER_RADIUS_4X),
                                topRight: Radius.circular(
                                    MyDimensions.BORDER_RADIUS_6X),
                                bottomLeft: Radius.circular(
                                    MyDimensions.BORDER_RADIUS_5X)),
                            color: const Color.fromARGB(171, 0, 0, 0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              ImagesPath.star,
                              height: MyDimensions.SPACE_SIZE_2X,
                              width: MyDimensions.SPACE_SIZE_2X,
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: MyDimensions.SPACE_SIZE_1X),
                              child: Text(
                                controller.imageList[index]["start"].toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: MyDimensions
                                        .FONT_SIZE_SPAN_SMALL_EXTRA),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(left: MyDimensions.SPACE_SIZE_3X),
                        padding:
                            EdgeInsets.only(bottom: MyDimensions.SPACE_SIZE_1X),
                        child: Text(
                          controller.imageList[index]["text"].toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: MyDimensions.FONT_SIZE_H5 * 0.9),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
