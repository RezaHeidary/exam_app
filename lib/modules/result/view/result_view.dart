import 'package:exam_app/core/theme/style.dart';
import 'package:exam_app/core/value/str.dart';
import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyStyle.widgetStyle(MyString.resultTitel),
    );
  }
}
