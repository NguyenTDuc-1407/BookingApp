import 'package:booking/utils/images_path.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<Map<String, dynamic>> infor = [
    {
      "image": ImagesPath.home1_main,
      "content": "Nice place to relax and chill",
      "hastast": "#snowfall #chill",
      "buttonLike": true,
      "buttonMark": false,
      "numberLike": 45,
      "numberComment": 10
    },
    {
      "image": ImagesPath.home2_main,
      "content": "Nice place to relax and chill",
      "hastast": "#snowfall #chill",
      "buttonLike": false,
      "buttonMark": false,
      "numberLike": 123,
      "numberComment": 10
    },
    {
      "image": ImagesPath.home1_main,
      "content": "Nice place to relax and chill",
      "hastast": "#snowfall #chill",
      "buttonLike": false,
      "buttonMark": true,
      "numberLike": 23,
      "numberComment": 10
    },
    {
      "image": ImagesPath.home2_main,
      "content": "Nice place to relax and chill",
      "hastast": "#snowfall #chill",
      "numberLike": 12,
      "buttonLike": true,
      "buttonMark": true,
      "numberComment": 10
    },
  ];
  void actionButtonLike(int index) {
    infor[index]["buttonLike"] = !infor[index]["buttonLike"];
    if (infor[index]["buttonLike"]) {
      infor[index]["buttonLike"] = true;
      infor[index]["numberLike"] = infor[index]["numberLike"] + 1;
    } else {
      infor[index]["buttonLike"] = false;
      infor[index]["numberLike"] = infor[index]["numberLike"] - 1;
    }
    update();
  }

  void actionButtonMark(int index) {
    infor[index]["buttonMark"] = !infor[index]["buttonMark"];
    update();
  }
}
