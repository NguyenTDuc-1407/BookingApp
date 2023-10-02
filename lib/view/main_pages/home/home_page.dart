// ignore_for_file: use_key_in_widget_constructors, sort_child_properties_last

import 'package:booking/helper/dimensions.dart';
import 'package:booking/utils/images_path.dart';
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
          leadingWidth: MyDimensions.SPACE_SIZE_5X * 4,
          leading: Container(
            margin: EdgeInsets.only(
              left: MyDimensions.SPACE_SIZE_5X,
            ),
            padding: EdgeInsets.all(MyDimensions.SPACE_SIZE_1X),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(MyDimensions.BORDER_RADIUS_7X * 10),
              child: Image.asset(
                ImagesPath.avata1_main,
                fit: BoxFit.cover,
              ),
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
        body: ListView.builder(
          itemCount: controller.infor.length,
          itemBuilder: (context, index) => Container(
            key: ValueKey(controller.infor[index]["id"]),
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Color.fromRGBO(74, 169, 188, 0.281),
                ),
              ),
              color: Colors.white,
            ),
            child: InkWell(
              onTap: () {
                // controller.onNextPage();
              },
              child: Column(
                children: [
                  ListTile(
                    leading: Container(
                      margin: EdgeInsets.only(
                          top: MyDimensions.SPACE_SIZE_1X * 0.7),
                      width: MyDimensions.SPACE_SIZE_5X * 8,
                      child: Row(
                        children: [
                          SizedBox(
                            height: MyDimensions.SPACE_SIZE_4X,
                            width: MyDimensions.SPACE_SIZE_4X,
                            child: Image.asset(ImagesPath.location_main),
                          ),
                          const Expanded(
                            child: Text(
                              'Gulmarg, Kashmir',
                              style: TextStyle(color: Colors.black),
                            ),
                          )
                        ],
                      ),
                    ),
                    trailing: SizedBox(
                      width: MyDimensions.SPACE_SIZE_5X * 8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Expanded(
                            child: Text(
                              'joeypark',
                              style: TextStyle(color: Colors.black),
                              textAlign: TextAlign.right,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: MyDimensions.SPACE_SIZE_1X),
                            height: MyDimensions.SPACE_SIZE_4X * 2,
                            width: MyDimensions.SPACE_SIZE_4X * 2,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  MyDimensions.BORDER_RADIUS_7X * 10),
                              child: Image.asset(
                                ImagesPath.avata2_main,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MyDimensions.mySize.height * 0.3,
                    width: MyDimensions.mySize.width,
                    child: Image.asset(
                      controller.infor[index]["image"],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin:
                        EdgeInsets.only(top: MyDimensions.ONE_UNIT_SIZE * 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin:
                              EdgeInsets.only(left: MyDimensions.SPACE_SIZE_5X),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () =>
                                        controller.actionButtonLike(index),
                                    child: SizedBox(
                                      height: MyDimensions.SPACE_SIZE_5X,
                                      width: MyDimensions.SPACE_SIZE_5X,
                                      child: controller.infor[index]
                                              ["buttonLike"]
                                          ? Image.asset(
                                              ImagesPath.heart_red_main)
                                          : Image.asset(
                                              ImagesPath.heart_main,
                                            ),
                                    ),
                                  ),
                                  Text(controller.infor[index]["numberLike"]
                                      .toString()),
                                ],
                              ),
                              SizedBox(
                                width: MyDimensions.SPACE_SIZE_2X,
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                      height: MyDimensions.SPACE_SIZE_5X,
                                      width: MyDimensions.SPACE_SIZE_5X,
                                      child: Image.asset(ImagesPath.mess_main)),
                                  Text(controller.infor[index]["numberComment"]
                                      .toString()),
                                ],
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () => controller.actionButtonMark(index),
                          child: Container(
                            margin: EdgeInsets.only(
                                right: MyDimensions.SPACE_SIZE_5X),
                            height: MyDimensions.SPACE_SIZE_5X,
                            width: MyDimensions.SPACE_SIZE_5X,
                            child: Image.asset(
                              ImagesPath.markBook_main,
                              color: controller.infor[index]["buttonMark"]
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin:
                        EdgeInsets.only(top: MyDimensions.ONE_UNIT_SIZE * 10),
                    child: Row(
                      children: [
                        SizedBox(
                          width: MyDimensions.SPACE_SIZE_5X,
                        ),
                        Expanded(
                          child: Text(
                            controller.infor[index]['content'].toString(),
                            style: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding:
                        EdgeInsets.only(bottom: MyDimensions.ONE_UNIT_SIZE * 5),
                    child: Row(
                      children: [
                        SizedBox(
                          width: MyDimensions.SPACE_SIZE_5X,
                        ),
                        Expanded(
                          child: Text(
                            controller.infor[index]['hastast'].toString(),
                            style: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
