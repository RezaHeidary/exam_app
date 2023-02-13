import 'package:exam_app/modules/home/view/home_view.dart';
import 'package:exam_app/modules/result/view/result_view.dart';
import 'package:exam_app/modules/single_test_manage/view/single_test_mange_view.dart';
import 'package:exam_app/modules/start_test/view/start_test_view.dart';
import 'package:exam_app/route/pages.dart';
import 'package:get/get.dart';
import '../modules/login/view/login_view.dart';

class Pages {
  Pages._();

  static List<GetPage<dynamic>> pages = [
    GetPage(name: NamedRoute.initialRoute, page: () => const LoginView()),
    GetPage(name: NamedRoute.homeRoute, page: () => HomeView()),
    GetPage(name: NamedRoute.resultView, page: () => const ResultView()),
    GetPage(
        name: NamedRoute.singleMangeTest,
        page: () => const SingleTestMangeView()),
    GetPage(name: NamedRoute.startTestView, page: () => StartTestView()),
  ];
}
