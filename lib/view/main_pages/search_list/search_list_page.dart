// ignore_for_file: sort_child_properties_last, use_key_in_widget_constructors

import 'package:booking/helper/dimensions.dart';
import 'package:booking/utils/images_path.dart';
import 'package:booking/view/main_pages/search_list/search_list_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchListPage extends GetView {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SearchListController(),
      builder: (SearchListController controller) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
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
              preferredSize: Size.fromHeight(MyDimensions.ONE_UNIT_SIZE),
            ),
          ),
          body: Column(
            children: [
              Container(
                height: MyDimensions.SPACE_SIZE_5X * 2,
                width: MyDimensions.mySize.width * 0.9,
                margin: EdgeInsets.only(
                    top: MyDimensions.SPACE_SIZE_4X,
                    bottom: MyDimensions.SPACE_SIZE_5X),
                child: TextField(
                  style: const TextStyle(color: Color(0xff626262)),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 226, 248, 251),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            MyDimensions.BORDER_RADIUS_3X),
                        borderSide: BorderSide.none),
                    hintText: "Search",
                    hintStyle: TextStyle(
                        fontSize: MyDimensions.FONT_SIZE_H6,
                        height: MyDimensions.ONE_UNIT_SIZE * 0.9),
                    prefixIcon: Icon(
                      Icons.search,
                      size: MyDimensions.FONT_SIZE_H2,
                    ),
                    prefixIconColor: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: SizedBox(
                    width: MyDimensions.mySize.width * 0.9,
                    child: ListView(
                      children: [
                        Container(
                          height: MyDimensions.SPACE_SIZE_5X * 2.2,
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Colors.black),
                            ),
                          ),
                          child: ListTile(
                            title: const Text("Travel Themes"),
                            trailing: RichText(
                              text: TextSpan(
                                text: "See All",
                                style: TextStyle(
                                    color:
                                        const Color.fromRGBO(74, 169, 188, 100),
                                    fontSize:
                                        MyDimensions.FONT_SIZE_SPAN_SMALL *
                                            0.8),
                                children: [
                                  TextSpan(
                                    text: " >>",
                                    style: TextStyle(
                                        color: const Color.fromRGBO(
                                            74, 169, 188, 100),
                                        fontSize: MyDimensions.FONT_SIZE_SPAN),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: MyDimensions.SPACE_SIZE_5X * 8,
                          margin:
                              EdgeInsets.only(top: MyDimensions.SPACE_SIZE_3X),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: controller.imageList.length,
                            itemBuilder: (context, index) => GestureDetector(
                              onTap: () {},
                              child: Container(
                                  width: MyDimensions.SPACE_SIZE_5X * 6.5,
                                  margin: EdgeInsets.only(
                                      right: MyDimensions.SPACE_SIZE_5X),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      MyDimensions.SPACE_SIZE_2X,
                                    ),
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      SizedBox(
                                        height: MyDimensions.SPACE_SIZE_5X * 8,
                                        width: MyDimensions.mySize.width,
                                        child: ClipRRect(
                                          child: Image.asset(
                                            controller.imageList[index]
                                                    ['background']
                                                .toString(),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                          bottom: MyDimensions.SPACE_SIZE_1X,
                                          left: MyDimensions.SPACE_SIZE_2X,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            MyDimensions.SPACE_SIZE_2X,
                                          ),
                                          gradient: const LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Colors.transparent,
                                              Colors.black,
                                            ],
                                          ),
                                        ),
                                        child: Text(
                                          controller.imageList[index]["text"]
                                              .toString(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize:
                                                  MyDimensions.FONT_SIZE_H6 *
                                                      0.9),
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(top: MyDimensions.SPACE_SIZE_5X),
                          height: MyDimensions.SPACE_SIZE_5X * 2.2,
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Colors.black),
                            ),
                          ),
                          child: ListTile(
                            title: const Text("Must Visit Places"),
                            trailing: RichText(
                              text: TextSpan(
                                text: "See All",
                                style: TextStyle(
                                    color:
                                        const Color.fromRGBO(74, 169, 188, 100),
                                    fontSize:
                                        MyDimensions.FONT_SIZE_SPAN_SMALL *
                                            0.8),
                                children: [
                                  TextSpan(
                                    text: " >>",
                                    style: TextStyle(
                                        color: const Color.fromRGBO(
                                            74, 169, 188, 100),
                                        fontSize: MyDimensions.FONT_SIZE_SPAN),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: MyDimensions.SPACE_SIZE_5X * 7,
                          margin:
                              EdgeInsets.only(top: MyDimensions.SPACE_SIZE_3X),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: controller.imageList1.length,
                            itemBuilder: (context, index) => GestureDetector(
                              onTap: () {},
                              child: Container(
                                  width: MyDimensions.SPACE_SIZE_5X * 5,
                                  margin: EdgeInsets.only(
                                    right: MyDimensions.SPACE_SIZE_3X,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        MyDimensions.SPACE_SIZE_2X),
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      SizedBox(
                                        height: MyDimensions.mySize.height,
                                        width: MyDimensions.mySize.width,
                                        child: ClipRRect(
                                          child: Image.asset(
                                            controller.imageList1[index]
                                                    ['background']
                                                .toString(),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height:
                                            MyDimensions.SPACE_SIZE_5X * 1.2,
                                        width: MyDimensions.SPACE_SIZE_5X * 3.5,
                                        margin: EdgeInsets.only(
                                            left: MyDimensions.SPACE_SIZE_5X *
                                                2.5,
                                            bottom:
                                                MyDimensions.SPACE_SIZE_5X * 6),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(
                                                    MyDimensions
                                                        .BORDER_RADIUS_4X),
                                                topRight: Radius.circular(
                                                    MyDimensions
                                                        .BORDER_RADIUS_6X),
                                                bottomLeft: Radius.circular(
                                                    MyDimensions
                                                        .BORDER_RADIUS_5X)),
                                            color: const Color.fromARGB(
                                                171, 0, 0, 0)),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              ImagesPath.star,
                                              height:
                                                  MyDimensions.SPACE_SIZE_2X,
                                              width: MyDimensions.SPACE_SIZE_2X,
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: MyDimensions
                                                          .SPACE_SIZE_1X *
                                                      0.5),
                                              child: Text(
                                                controller.imageList1[index]
                                                        ["start"]
                                                    .toString(),
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
                                        padding: EdgeInsets.only(
                                          bottom: MyDimensions.SPACE_SIZE_1X,
                                          left: MyDimensions.SPACE_SIZE_2X,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            MyDimensions.SPACE_SIZE_2X,
                                          ),
                                          gradient: const LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Colors.transparent,
                                              Colors.black,
                                            ],
                                          ),
                                        ),
                                        width: MyDimensions.SPACE_SIZE_5X * 8,
                                        child: Text(
                                          controller.imageList1[index]["text"]
                                              .toString(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize:
                                                  MyDimensions.FONT_SIZE_H6 *
                                                      0.8),
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(top: MyDimensions.SPACE_SIZE_5X),
                          height: MyDimensions.SPACE_SIZE_5X * 2.2,
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Colors.black),
                            ),
                          ),
                          child: ListTile(
                            title: const Text("Packages"),
                            trailing: RichText(
                              text: TextSpan(
                                text: "See All",
                                style: TextStyle(
                                    color:
                                        const Color.fromRGBO(74, 169, 188, 100),
                                    fontSize:
                                        MyDimensions.FONT_SIZE_SPAN_SMALL *
                                            0.8),
                                children: [
                                  TextSpan(
                                    text: " >>",
                                    style: TextStyle(
                                        color: const Color.fromRGBO(
                                            74, 169, 188, 100),
                                        fontSize: MyDimensions.FONT_SIZE_SPAN),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: MyDimensions.SPACE_SIZE_5X * 5,
                          margin: EdgeInsets.only(
                            top: MyDimensions.SPACE_SIZE_3X,
                            bottom: MyDimensions.SPACE_SIZE_5X,
                          ),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: controller.imageList2.length,
                            itemBuilder: (context, index) => GestureDetector(
                              onTap: () {},
                              child: Container(
                                  width: MyDimensions.SPACE_SIZE_5X * 8.5,
                                  margin: EdgeInsets.only(
                                      right: MyDimensions.SPACE_SIZE_2X),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        MyDimensions.SPACE_SIZE_2X),
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      SizedBox(
                                        width: MyDimensions.mySize.width,
                                        child: ClipRRect(
                                          child: Image.asset(
                                            controller.imageList2[index]
                                                    ['background']
                                                .toString(),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height:
                                            MyDimensions.SPACE_SIZE_5X * 1.2,
                                        width: MyDimensions.SPACE_SIZE_5X * 3.5,
                                        margin: EdgeInsets.only(
                                            left: MyDimensions.SPACE_SIZE_5X *
                                                2.5,
                                            bottom: MyDimensions.SPACE_SIZE_5X *
                                                3.8),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(
                                                    MyDimensions
                                                        .BORDER_RADIUS_4X),
                                                topRight: Radius.circular(
                                                    MyDimensions
                                                        .BORDER_RADIUS_6X),
                                                bottomLeft: Radius.circular(
                                                    MyDimensions
                                                        .BORDER_RADIUS_5X)),
                                            color: const Color.fromARGB(
                                                171, 0, 0, 0)),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              ImagesPath.star,
                                              height:
                                                  MyDimensions.SPACE_SIZE_2X,
                                              width: MyDimensions.SPACE_SIZE_2X,
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: MyDimensions
                                                          .SPACE_SIZE_1X *
                                                      0.5),
                                              child: Text(
                                                controller.imageList2[index]
                                                        ["start"]
                                                    .toString(),
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
                                        padding: EdgeInsets.only(
                                          bottom: MyDimensions.SPACE_SIZE_2X,
                                          right: MyDimensions.SPACE_SIZE_4X,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            MyDimensions.SPACE_SIZE_2X,
                                          ),
                                          gradient: const LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Colors.transparent,
                                              Colors.black,
                                            ],
                                          ),
                                        ),
                                        child: Text(
                                          controller.imageList2[index]["text"]
                                              .toString(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize:
                                                  MyDimensions.FONT_SIZE_H6 *
                                                      0.8),
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
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
