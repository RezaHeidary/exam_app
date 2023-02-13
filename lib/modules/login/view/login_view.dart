import 'package:exam_app/core/theme/style.dart';
import 'package:exam_app/value/str.dart';
import 'package:flutter/material.dart';
import '../widget/login_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyStyle.widgetStyle(
        MyString.appbarLoginTxt,
      ),
      body: LoginWidget.widgetLogin(),
    );
  }
}
