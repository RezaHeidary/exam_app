import 'package:exam_app/data/serveis/materialapp_service.dart';
import 'package:exam_app/route/pages.dart';
import 'package:exam_app/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    MatrialAppService matrialAppServies = Get.put(MatrialAppService());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: matrialAppServies.getTheme(),
      locale: const Locale('fa'),
      title: 'Exam',
      getPages: Pages.pages,
      initialRoute: NamedRoute.initialRoute,
    );
  }
}
