// ignore: file_names
import 'package:booking/utils/images_path.dart';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class BadgesController extends GetxController {
  List numberList = [
    {
      "number": 7,
      "icon": ImagesPath.shield,
      "text": "Badges Earned",
      "color": const Color(0xffFFE7E7)
    },
    {
      "number": 15,
      "icon": ImagesPath.fire,
      "text": "Travel Streak",
      "color": const Color(0xffFBF3CA)
    },
    {
      "number": 2,
      "icon": ImagesPath.swim,
      "text": "Swimmer of the week",
      "color": const Color(0xffE6EEFE)
    },
    {
      "number": 1,
      "icon": ImagesPath.climbing,
      "text": "Trekker of the week",
      "color": const Color(0xffFFE7FE)
    },
  ];
}
