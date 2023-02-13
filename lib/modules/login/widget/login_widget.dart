import 'package:exam_app/modules/login/controller/login_controller.dart';
import 'package:exam_app/value/str.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginWidget {
  LoginWidget._();
  static LoginController loginCotroller = Get.put(LoginController());
  static widgetLogin() {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
        padding: const EdgeInsets.all(20),
        child: TextField(
          decoration: InputDecoration(hintText: MyString.userNameTxt),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(20),
        child: TextField(
          decoration: InputDecoration(hintText: MyString.passTxt),
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      ElevatedButton(
        onPressed: loginCotroller.getLogin,
        style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(
                Size(Get.width / 2, Get.height / 17))),
        child: Text(MyString.btnloginTxt),
      )
    ]);
  }
}
