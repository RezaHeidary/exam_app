import 'package:exam_app/core/theme/style.dart';
import 'package:exam_app/modules/home/controller/home_controller.dart';
import 'package:exam_app/modules/home/view/old_test.dart';
import 'package:exam_app/modules/home/view/user_view.dart';
import 'package:exam_app/modules/home/widget/drawer_home_widget.dart';
import 'package:exam_app/modules/home/widget/home_nav.dart';
import 'package:exam_app/modules/home/widget/home_widget.dart';
import 'package:exam_app/value/str.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class HomeView extends StatelessWidget {
  HomeView({super.key});
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
          appBar: MyStyle.widgetStyle(homeController.titelAppbar.value),
          drawer: HomeDrawerWidget.widgetHomeDrawer(context),
          body: IndexedStack(
            index: HomeNavWidget.homeController.pageIndex.value,
            children: [
              HomeWidget.widgetHome(),
              const OldTestView(),
              const UserView()
            ],
          ),
          bottomNavigationBar: HomeNavWidget.widgetHomeNav(context)),
    );
  }
}
