// ignore_for_file: use_key_in_widget_constructors, sort_child_properties_last

import 'package:booking/helper/dimensions.dart';
import 'package:booking/view/main_pages/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeController(),
      builder: (controller) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Container(
            height: MyDimensions.SPACE_SIZE_3X,
            width: MyDimensions.SPACE_SIZE_3X,
            margin: EdgeInsets.all(MyDimensions.SPACE_SIZE_2X),
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(MyDimensions.BORDER_RADIUS_7X),
              color: Colors.red,
            ),
          ),
          title: Container(
            margin: EdgeInsets.only(left: MyDimensions.SPACE_SIZE_5X * 9),
            child: RichText(
              text: TextSpan(
                text: "Trave",
                style: TextStyle(
                    fontSize: MyDimensions.FONT_SIZE_H1, color: Colors.black),
                children: [
                  TextSpan(
                    text: "ally",
                    style: TextStyle(
                        fontSize: MyDimensions.FONT_SIZE_H1,
                        color: const Color.fromARGB(255, 74, 169, 188)),
                  ),
                ],
              ),
            ),
          ),
          centerTitle: true,
          elevation: 0,
          bottom: PreferredSize(
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: const Color(0xffEAEAEA), // Màu sắc của Divider
                      width:
                          MyDimensions.ONE_UNIT_SIZE, // Chiều cao của Divider
                    ),
                  ),
                ),
              ),
              preferredSize: Size.fromHeight(MyDimensions.ONE_UNIT_SIZE)),
        ),
        body: Container(
          color: Colors.white,
        ),
      ),
    );
  }
}
