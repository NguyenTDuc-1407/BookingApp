import 'package:booking/routers/app_pages.dart';
import 'package:booking/routers/router_child/sql_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:booking/di_container.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: SqlRouter.SQL,
      debugShowCheckedModeBanner: false,
      getPages: AppPage.list,
    );
  }
}
