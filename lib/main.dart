import 'package:exam_app/data/serveis/materialapp_service.dart';
import 'package:exam_app/route/pages.dart';
import 'package:exam_app/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  await initilal();
  Get.find<MatrialAppService>().getInit();
  runApp(const MyApp());
}

Future initilal() async {
  Get.put(MatrialAppService());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    MatrialAppService matrialAppServies = Get.find<MatrialAppService>();
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
