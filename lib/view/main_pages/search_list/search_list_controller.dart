import 'package:booking/utils/images_path.dart';
import 'package:get/get.dart';

class SearchListController extends GetxController {
  List imageList = [
    {"id": 1, "background": ImagesPath.search1, "text": "HILL STATIONS"},
    {"id": 2, "background": ImagesPath.search2, "text": "BEACH VACTIONS"},
    {"id": 3, "background": ImagesPath.search3, "text": "WEEKLY GETAWAYS"},
  ];
  List imageList1 = [
    {"id": 1, "background": ImagesPath.search4, "text": "PARIS", "start": 4.7},
    {"id": 2, "background": ImagesPath.search5, "text": "AGRA", "start": 4.8},
    {"id": 3, "background": ImagesPath.search6, "text": "SEOUL", "start": 4.8},
    {"id": 4, "background": ImagesPath.search7, "text": "HAWAI", "start": 4.6},
  ];
  List imageList2 = [
    {
      "id": 1,
      "background": ImagesPath.search8,
      "text": "North East",
      "start": 4.7
    },
    {
      "id": 2,
      "background": ImagesPath.search9,
      "text": "North East",
      "start": 4.7
    },
  ];
}
