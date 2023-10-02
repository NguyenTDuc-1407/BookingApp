import 'package:booking/helper/dimensions.dart';
import 'package:booking/main.dart';
import 'package:booking/utils/images_path.dart';
import 'package:booking/view/main_pages/profile/Badges/Badges_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BadgesPage extends StatefulWidget {
  const BadgesPage({super.key});

  @override
  State<BadgesPage> createState() => _BadgesPageState();
}

class _BadgesPageState extends State<BadgesPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: BadgesController(),
      builder: (BadgesController controller) => Scaffold(
        body: Container(
          height: MyDimensions.mySize.height,
          margin: EdgeInsets.only(
              top: MyDimensions.SPACE_SIZE_5X,
              left: MyDimensions.SPACE_SIZE_5X * 2,
              right: MyDimensions.SPACE_SIZE_5X * 2),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: (MyDimensions.ONE_UNIT_SIZE /
                    MyDimensions.SPACE_SIZE_1X *
                    6.1),
                crossAxisSpacing: MyDimensions.SPACE_SIZE_5X * 2,
                mainAxisSpacing: MyDimensions.SPACE_SIZE_5X * 2),
            children: [
              ...List.generate(
                controller.numberList.length,
                (index) => Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(MyDimensions.BORDER_RADIUS_3X),
                    color: controller.numberList[index]["color"],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin:
                            EdgeInsets.only(top: MyDimensions.SPACE_SIZE_5X),
                        child: Image.asset(
                          controller.numberList[index]["icon"],
                          height: MyDimensions.SPACE_SIZE_5X * 2.5,
                          width: MyDimensions.SPACE_SIZE_5X * 2.5,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            controller.numberList[index]["text"],
                            style: TextStyle(
                                fontSize:
                                    MyDimensions.FONT_SIZE_SPAN_SMALL_EXTRA *
                                        0.8,
                                fontWeight: FontWeight.w500),
                          ),
                          Container(
                            height: MyDimensions.SPACE_SIZE_5X,
                            margin: EdgeInsets.only(
                                bottom: MyDimensions.SPACE_SIZE_5X),
                            child: Text(
                              controller.numberList[index]["number"].toString(),
                              style: TextStyle(
                                  fontSize: MyDimensions.FONT_SIZE_H4),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
