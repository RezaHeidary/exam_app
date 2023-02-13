import 'package:exam_app/route/pages.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  getLogin() {
    Get.offNamed(NamedRoute.homeRoute);
  }
}
