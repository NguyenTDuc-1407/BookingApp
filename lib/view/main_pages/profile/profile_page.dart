// ignore_for_file: use_key_in_widget_constructors

import 'package:booking/helper/dimensions.dart';
import 'package:booking/utils/images_path.dart';
import 'package:booking/view/main_pages/profile/Badges/Badges_page.dart';
import 'package:booking/view/main_pages/profile/Destinations/Destinations_page.dart';
import 'package:booking/view/main_pages/profile/Postss/Postss_page.dart';
import 'package:booking/view/main_pages/profile/Visited/Visited_page.dart';
import 'package:booking/view/main_pages/profile/profile_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ProfilePage extends GetView {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: GetBuilder(
        init: ProfileController(),
        builder: (ProfileController controller) => GestureDetector(
          onTap: () {
            controller.actionHideListAdd();
          },
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              centerTitle: true,
              leadingWidth: 0,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "aanyasharma",
                    style: TextStyle(
                      color: Color(0xff4AA9BC),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                      height: MyDimensions.SPACE_SIZE_5X * 1.2,
                      width: MyDimensions.SPACE_SIZE_5X * 1.2,
                      child: Image.asset(ImagesPath.settings)),
                ],
              ),
            ),
            body: SingleChildScrollView(
              child: SizedBox(
                height: MyDimensions.mySize.height,
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(
                                bottom: MyDimensions.SPACE_SIZE_5X * 2.8),
                            height: MyDimensions.mySize.height * 0.2,
                            width: MyDimensions.mySize.width * 0.95,
                            child: Image.asset(
                              ImagesPath.background_profile,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: MyDimensions.SPACE_SIZE_5X * 1.5),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(
                                    MyDimensions.SPACE_SIZE_1X * 0.5),
                                height: MyDimensions.SPACE_SIZE_5X * 5.4,
                                width: MyDimensions.SPACE_SIZE_5X * 5.4,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        MyDimensions.BORDER_RADIUS_7X * 10),
                                    color: Colors.white),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      MyDimensions.BORDER_RADIUS_7X * 10),
                                  child: Image.asset(ImagesPath.avata1_main),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: MyDimensions.SPACE_SIZE_5X * 2.5),
                                height: MyDimensions.SPACE_SIZE_5X * 2.4,
                                width: MyDimensions.SPACE_SIZE_5X * 13,
                                child: ListTile(
                                  title: Text(
                                    "Aanya Sharma",
                                    style: TextStyle(
                                        fontSize: MyDimensions.FONT_SIZE_H4,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Banglore, India",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        "150 traveallies",
                                        style: TextStyle(
                                            color: Color(0xff4AA9BC),
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                  trailing: Container(
                                    margin: EdgeInsets.only(
                                        top: MyDimensions.SPACE_SIZE_5X),
                                    child: Image.asset(
                                      ImagesPath.edit,
                                      width: MyDimensions.SPACE_SIZE_5X,
                                      height: MyDimensions.SPACE_SIZE_5X,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(
                                top: MyDimensions.SPACE_SIZE_2X),
                            height: MyDimensions.SPACE_SIZE_5X * 2,
                            width: MyDimensions.mySize.width * 0.86,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: Colors.grey,
                                    width: MyDimensions.ONE_UNIT_SIZE * 3),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(top: MyDimensions.SPACE_SIZE_2X),
                          height: MyDimensions.SPACE_SIZE_5X * 2,
                          width: MyDimensions.mySize.width,
                          child: TabBar(
                            indicatorColor: const Color(0xff4AA9BC),
                            labelColor: const Color(0xff4AA9BC),
                            unselectedLabelColor: Colors.grey,
                            indicatorSize: TabBarIndicatorSize.label,
                            indicatorWeight: MyDimensions.ONE_UNIT_SIZE * 4,
                            isScrollable: true,
                            padding: EdgeInsets.only(
                              top: MyDimensions.SPACE_SIZE_2X,
                            ),
                            labelPadding: EdgeInsets.only(
                                left: MyDimensions.SPACE_SIZE_5X * 1.2,
                                right: MyDimensions.SPACE_SIZE_5X * 1.2),
                            tabs: const [
                              Tab(text: 'Posts'),
                              Tab(text: 'Badges'),
                              Tab(text: 'Visited'),
                              Tab(text: 'Destinations'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        margin:
                            EdgeInsets.only(top: MyDimensions.SPACE_SIZE_2X),
                        child: const TabBarView(
                          children: [
                            PostssPage(),
                            BadgesPage(),
                            VisitedPage(),
                            DestinationsPage(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            floatingActionButton: Stack(
              alignment: Alignment.bottomRight,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    controller.actionShowListAdd();
                  },
                  elevation: 0,
                  backgroundColor: const Color(0xff4AA9BC),
                  child: Icon(
                    Icons.add,
                    size: MyDimensions.SPACE_SIZE_5X * 2,
                  ),
                ),
                Visibility(
                  visible: controller.showListAdd,
                  child: Container(
                    height: MyDimensions.mySize.height * 0.3,
                    width: MyDimensions.mySize.width * 0.6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            MyDimensions.BORDER_RADIUS_4X),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Container(
                          height: MyDimensions.SPACE_SIZE_5X * 1.5,
                          width: MyDimensions.mySize.width * 0.5,
                          margin:
                              EdgeInsets.only(top: MyDimensions.SPACE_SIZE_3X),
                          padding: EdgeInsets.only(
                              bottom: MyDimensions.SPACE_SIZE_1X),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  color: const Color(0xff4AA9BC),
                                  width: MyDimensions.ONE_UNIT_SIZE * 2),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Add New",
                              style: TextStyle(
                                  fontSize: MyDimensions.FONT_SIZE_H4,
                                  color: const Color(0xff4AA9BC)),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            controller.actionNextPagePost();
                          },
                          child: Container(
                            height: MyDimensions.SPACE_SIZE_5X * 1.5,
                            width: MyDimensions.mySize.width * 0.5,
                            margin: EdgeInsets.only(
                                top: MyDimensions.SPACE_SIZE_3X),
                            padding: EdgeInsets.only(
                                bottom: MyDimensions.SPACE_SIZE_1X),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: const Color.fromARGB(62, 0, 0, 0),
                                    width: MyDimensions.ONE_UNIT_SIZE),
                              ),
                            ),
                            child: Text(
                              "Post",
                              style: TextStyle(
                                  fontSize: MyDimensions.FONT_SIZE_SPAN,
                                  color: const Color(0xff000000)),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            controller.actionNextPageVisitedPlace();
                          },
                          child: Container(
                            height: MyDimensions.SPACE_SIZE_5X * 1.5,
                            width: MyDimensions.mySize.width * 0.5,
                            margin: EdgeInsets.only(
                                top: MyDimensions.SPACE_SIZE_3X),
                            padding: EdgeInsets.only(
                                bottom: MyDimensions.SPACE_SIZE_1X),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: const Color.fromARGB(62, 0, 0, 0),
                                    width: MyDimensions.ONE_UNIT_SIZE),
                              ),
                            ),
                            child: Text(
                              "visited place",
                              style: TextStyle(
                                  fontSize: MyDimensions.FONT_SIZE_SPAN,
                                  color: const Color(0xff000000)),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            controller.actionNextPageDestination();
                          },
                          child: Container(
                            height: MyDimensions.SPACE_SIZE_5X * 1.5,
                            width: MyDimensions.mySize.width * 0.5,
                            margin: EdgeInsets.only(
                                top: MyDimensions.SPACE_SIZE_3X),
                            padding: EdgeInsets.only(
                                bottom: MyDimensions.SPACE_SIZE_1X),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: const Color.fromARGB(62, 0, 0, 0),
                                    width: MyDimensions.ONE_UNIT_SIZE),
                              ),
                            ),
                            child: Text(
                              "Destination",
                              style: TextStyle(
                                  fontSize: MyDimensions.FONT_SIZE_SPAN,
                                  color: const Color(0xff000000)),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            controller.actionNextPageTrip();
                          },
                          child: Container(
                            height: MyDimensions.SPACE_SIZE_5X * 1.5,
                            width: MyDimensions.mySize.width * 0.5,
                            margin: EdgeInsets.only(
                                top: MyDimensions.SPACE_SIZE_3X),
                            padding: EdgeInsets.only(
                                bottom: MyDimensions.SPACE_SIZE_1X),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: const Color.fromARGB(62, 0, 0, 0),
                                    width: MyDimensions.ONE_UNIT_SIZE),
                              ),
                            ),
                            child: Text(
                              "Trip",
                              style: TextStyle(
                                  fontSize: MyDimensions.FONT_SIZE_SPAN,
                                  color: const Color(0xff000000)),
                            ),
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
      ),
    );
  }
}
