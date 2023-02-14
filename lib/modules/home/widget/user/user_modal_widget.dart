import 'package:exam_app/modules/home/controller/home_controller.dart';
import 'package:exam_app/value/str.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserModalWidget {
  UserModalWidget._();

  static var homeController = Get.find<HomeController>();

  static showDialogName() {
    return Get.defaultDialog(
        title: MyString.editUserModal,
        content: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: homeController.textNameEditingController,
            decoration:
                InputDecoration(hintText: MyString.editTextBoxUserModal),
          ),
        ),
        confirm: TextButton(
            onPressed: () {
              homeController.nameUser.value =
                  homeController.textNameEditingController.text;
              homeController.update();

              Get.back();
            },
            child: Text(MyString.editBtnUserModal)));
  }

  static showDialogPass() {
    return Get.defaultDialog(
        title: MyString.editUserModal,
        content: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: homeController.textPasswodrEditingController,
            decoration:
                InputDecoration(hintText: MyString.editTextBoxUserModal),
          ),
        ),
        confirm: TextButton(
            onPressed: () {
              homeController.passUser.value =
                  homeController.textPasswodrEditingController.text;
              homeController.update();

              Get.back();
            },
            child: Text(MyString.editBtnUserModal)));
  }

  static showDialogLastName() {
    return Get.defaultDialog(
        title: MyString.editUserModal,
        content: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: homeController.textLastNameEditingController,
            decoration:
                InputDecoration(hintText: MyString.editTextBoxUserModal),
          ),
        ),
        confirm: TextButton(
            onPressed: () {
              homeController.lastNameUser.value =
                  homeController.textLastNameEditingController.text;

              homeController.update();

              Get.back();
            },
            child: Text(MyString.editBtnUserModal)));
  }

  static showDialogCode() {
    return Get.defaultDialog(
        title: MyString.editUserModal,
        content: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: homeController.textCodeEditingController,
            decoration:
                InputDecoration(hintText: MyString.editTextBoxUserModal),
          ),
        ),
        confirm: TextButton(
            onPressed: () {
              homeController.codeUser.value =
                  homeController.textCodeEditingController.text;
              homeController.update();

              Get.back();
            },
            child: Text(MyString.editBtnUserModal)));
  }
}
