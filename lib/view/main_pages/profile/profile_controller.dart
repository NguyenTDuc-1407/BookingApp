import 'package:get/get.dart';

class ProfileController extends GetxController {
  bool showListAdd = false;
  void actionShowListAdd() {
    showListAdd = true;
    update();
  }

  void actionHideListAdd() {
    showListAdd = false;
    update();
  }

  void actionNextPagePost() {
    print("PagePost");
  }

  void actionNextPageVisitedPlace() {
    print("PageVisitedPlace");
  }

  void actionNextPageDestination() {
    print("PageDestination");
  }

  void actionNextPageTrip() {
    print("PageTrip");
  }
}
