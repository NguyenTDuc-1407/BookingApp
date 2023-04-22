import 'package:booking/data/dio/dio_client.dart';
import 'package:booking/data/reponsitories/auth_respository.dart';
import 'package:booking/helper/size.dart';
import 'package:booking/provider/auth_provider.dart';
import 'package:booking/sharedpref/shared_preference_helper.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;
Future<void> init() async {
  // ignore: unused_local_variable

  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerSingleton<SharedPreferenceHelper>(
      SharedPreferenceHelper(sharedPreferences));
  sl.registerSingleton<MySize>(MySize());
  sl.registerLazySingleton<DioClient>(() => DioClient());

  sl.registerLazySingleton<AuthProvider>(() => AuthProvider());
  sl.registerLazySingleton<AuthRespository>(() => AuthRespository());
}
