import 'package:exam_app/modules/home/controller/home_controller.dart';
import 'package:exam_app/modules/home/widget/user/modal_and_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserView extends StatelessWidget {
  const UserView({super.key});
  static var homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                EditUserWidget(keyName: "Name", name: homeController.nameUser),
                EditUserWidget(
                    keyName: "LastName", name: homeController.lastNameUser),
                EditUserWidget(keyName: "Code", name: homeController.codeUser),
                EditUserWidget(keyName: "Pass", name: homeController.passUser),
                const SizedBox(
                  height: 25,
                )
              ]),
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
