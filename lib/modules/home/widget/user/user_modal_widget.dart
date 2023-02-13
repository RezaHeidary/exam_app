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
            controller: homeController.textNameEditingController.value,
            decoration:
                InputDecoration(hintText: MyString.editTextBoxUserModal),
          ),
        ),
        confirm: TextButton(
            onPressed: () {
              homeController.textNameEditingController.update((val) {
                if (val!.text.isNotEmpty) {
                  homeController.nameUser.value = val.text;
                }
              });
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
            controller: homeController.textPasswodrEditingController.value,
            decoration:
                InputDecoration(hintText: MyString.editTextBoxUserModal),
          ),
        ),
        confirm: TextButton(
            onPressed: () {
              homeController.textPasswodrEditingController.update((val) {
                if (val!.text.isNotEmpty) {
                  homeController.passUser.value = val.text;
                }
              });
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
            controller: homeController.textLastNameEditingController.value,
            decoration:
                InputDecoration(hintText: MyString.editTextBoxUserModal),
          ),
        ),
        confirm: TextButton(
            onPressed: () {
              homeController.textLastNameEditingController.update((val) {
                if (val!.text.isNotEmpty) {
                  homeController.lastNameUser.value = val.text;
                }
              });

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
            controller: homeController.textCodeEditingController.value,
            decoration:
                InputDecoration(hintText: MyString.editTextBoxUserModal),
          ),
        ),
        confirm: TextButton(
            onPressed: () {
              homeController.textCodeEditingController.update((val) {
                if (val!.text.isNotEmpty) {
                  homeController.codeUser.value = val.text;
                }
              });

              Get.back();
            },
            child: Text(MyString.editBtnUserModal)));
  }
}
