// ignore_for_file: file_names

import 'package:booking/utils/images_path.dart';
import 'package:get/get.dart';

class DestinationsController extends GetxController {
  List imageList = [
    {"id": 1, "image": ImagesPath.destinations1, "text": "Han River"},
    {"id": 2, "image": ImagesPath.destinations2, "text": "Charminar"},
    {"id": 3, "image": ImagesPath.destinations3, "text": "New York"},
    {"id": 4, "image": ImagesPath.destinations4, "text": "Singapore"},
  ];
}
