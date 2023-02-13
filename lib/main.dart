import 'package:exam_app/route/pages.dart';
import 'package:exam_app/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:exam_app/core/theme/theme.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});
  GetStorage getStorage = GetStorage();

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getStorage.read("theme") == "dark"
          ? Themes.darkTheme
          : Themes.lightTheme,
      locale: const Locale('fa'),
      title: 'Exam',
      getPages: Pages.pages,
      initialRoute: NamedRoute.initialRoute,
    );
  }
}
