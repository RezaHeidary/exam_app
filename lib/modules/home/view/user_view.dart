import 'package:exam_app/modules/home/controller/home_controller.dart';
import 'package:exam_app/modules/home/widget/user/user_modal_widget.dart';
import 'package:exam_app/modules/home/widget/user/user_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserView extends StatelessWidget {
  const UserView({super.key});
  static var homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => SingleChildScrollView(
          child: SizedBox(
            width: Get.width,
            height: Get.height,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    "assets/images/user.png",
                    scale: 5,
                  ),
                  GestureDetector(
                      onTap: () {
                        UserModalWidget.showDialogName();
                      },
                      child: UserWidget.widgetUser(
                          homeController.nameUser.value, context)),
                  GestureDetector(
                      onTap: () {
                        UserModalWidget.showDialogLastName();
                      },
                      child: UserWidget.widgetUser(
                          homeController.lastNameUser.value, context)),
                  GestureDetector(
                      onTap: () {
                        UserModalWidget.showDialogCode();
                      },
                      child: UserWidget.widgetUser(
                          homeController.codeUser.value, context)),
                  GestureDetector(
                      onTap: () {
                        UserModalWidget.showDialogPass();
                      },
                      child: UserWidget.widgetUser(
                          homeController.passUser.value, context)),
                  const SizedBox(
                    height: 25,
                  )
                ]),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 30.0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: ElevatedButton(
            onPressed: () {},
            child: SizedBox(
              width: Get.width / 2,
              child: Row(
                children: [
                  const Icon(Icons.edit),
                  SizedBox(
                    width: Get.width / 10,
                  ),
                  const Text("اعمال تغییرات"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
