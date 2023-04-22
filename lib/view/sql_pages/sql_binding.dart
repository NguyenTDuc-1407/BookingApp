import 'package:booking/view/sql_pages/sql_controller.dart';
import 'package:get/get.dart';

class SqlBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SqlController());
  }
}
