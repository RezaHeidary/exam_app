import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:exam_app/modules/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/value/str.dart';

class HomeNavWidget {
  HomeNavWidget._();
  static var homeController = Get.find<HomeController>();

  static widgetHomeNav(context) {
    var theme = Theme.of(context);
    return CustomNavigationBar(
      iconSize: 30.0,
      currentIndex: homeController.pageIndex.value,
      selectedColor: theme.iconTheme.color,
      backgroundColor: Theme.of(context).bottomAppBarTheme.color!,
      onTap: (index) {
        if (index == 0) {
          homeController.titelAppbar.value = MyString.appBarHome;
        } else if (index == 1) {
          homeController.titelAppbar.value = MyString.appBarListResult;
        } else if (index == 2) {
          homeController.titelAppbar.value = MyString.appBarProFile;
        }
        homeController.pageIndex.value = index;
      },
      items: [
        CustomNavigationBarItem(
          icon: const Icon(
            Icons.home,
          ),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.edit_note_sharp),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.account_box),
        ),
      ],
    );
  }
}
