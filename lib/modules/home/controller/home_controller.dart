import 'package:exam_app/core/theme/theme.dart';
import 'package:exam_app/value/str.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  var pageIndex = 0.obs;
  var themeIndex = 0.obs;

  //user view
  var textNameEditingController = TextEditingController();
  var textLastNameEditingController = TextEditingController();
  var textCodeEditingController = TextEditingController();
  var textPasswodrEditingController = TextEditingController();
  var nameUser = "Name".obs;
  var lastNameUser = "Last Name".obs;
  var codeUser = "Code".obs;
  var passUser = "PassWord".obs;

  //

  var titelAppbar = MyString.appBarHome.obs;

  GetStorage getStorage = GetStorage();

  getLight() {
    themeIndex.value = 0;
    Get.changeTheme(Themes.lightTheme);
    getStorage.write("theme", "light");
  }

  getDark() {
    themeIndex.value = 1;
    Get.changeTheme(Themes.darkTheme);
    getStorage.write("theme", "dark");
  }

  @override
  void onInit() {
    super.onInit();
    if (getStorage.read("theme") == "dark") {
      themeIndex.value = 1;
    } else {
      themeIndex.value = 0;
    }
  }
}
