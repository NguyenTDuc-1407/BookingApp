// // ignore_for_file: constant_identifier_names, depend_on_referenced_packages

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';

// const String BASE_URL = 'http://localhost:5001';
// const String BASE_URL_IMAGE = 'http://localhost:5001';
// const String SOCKET_URL = 'wss://socket1.crudcode.tk';

// const String notificationChannelId = 'dpfood_customer_channel';
// const String FCM_TOPIC_DEFAULT = 'fcm_all';
// const String NOTIFICATION_KEY = 'notification_key';
// const String NOTIFICATION_TITLE = 'title';
// const String NOTIFICATION_BODY = 'body';

// ///
// /// Muốn set ngôn ngữ tự động theo ngôn ngữ máy
// ///
// Locale localeResolutionCallback(
//     Locale locale, Iterable<Locale> supportedLocales) {
//   // ignore: unnecessary_null_comparison
//   if (locale == null) {
//     return supportedLocales.first;
//   }
//   for (final supportedLocale in supportedLocales) {
//     if (supportedLocale.languageCode == locale.languageCode) {
//       return supportedLocale;
//     }
//   }
//   return supportedLocales.first;
// }

// List<LocalizationsDelegate> localizationsDelegates = [
//   // AppLocalizations.delegate,// Load dư liệu trước
//   GlobalMaterialLocalizations.delegate,
//   GlobalWidgetsLocalizations.delegate,
//   GlobalCupertinoLocalizations.delegate
// ];
