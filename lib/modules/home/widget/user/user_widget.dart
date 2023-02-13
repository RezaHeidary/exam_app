import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserWidget {
  UserWidget._();

  static widgetUser(String str, context) {
    var theme = Theme.of(context).obs;
    return Material(
      borderRadius: BorderRadius.circular(10),
      elevation: 5,
      child: Container(
          width: Get.width / 1.5,
          height: Get.height / 15,
          decoration: BoxDecoration(
              color: theme.value.cardColor,
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  str,
                ),
                const Icon(Icons.edit)
              ],
            ),
          )),
    );
  }
}
