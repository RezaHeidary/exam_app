import 'package:exam_app/core/value/str.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditUserWidget extends StatelessWidget {
  const EditUserWidget({
    super.key,
    required this.keyName,
    required this.name,
  });
  final String keyName;
  final Rx<String> name;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    final textEditingController = TextEditingController();
    myModal() {
      return Get.defaultDialog(
          title: MyString.editUserModal,
          content: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: textEditingController,
              decoration:
                  InputDecoration(hintText: MyString.editTextBoxUserModal),
            ),
          ),
          confirm: TextButton(
              onPressed: () {
                if (textEditingController.text.isNotEmpty) {
                  name.value = textEditingController.text;
                }

                // switch (keyName) {
                //   case "Name":
                //     break;
                //   case "LastName":
                //     break;
                //   case "Pass":
                //     break;
                //   case "Code":
                //     break;
                //   default:
                // }

                Get.back();
              },
              child: Text(MyString.editBtnUserModal)));
    }

    return GestureDetector(
        onTap: () {
          myModal();
        },
        child: Obx(() => Container(
            width: Get.width / 1.5,
            height: Get.height / 15,
            decoration: BoxDecoration(
                color: theme.cardColor,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    name.value,
                  ),
                  const Icon(Icons.edit)
                ],
              ),
            ))));
  }
}
