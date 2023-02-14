import 'package:exam_app/core/theme/style.dart';
import 'package:exam_app/route/pages.dart';
import 'package:exam_app/core/value/str.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class StartTestView extends StatelessWidget {
  StartTestView({super.key});
  var test = [
    "1",
    "2",
    "3",
    "4",
  ].obs;
  var index = 0.obs;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      appBar: MyStyle.widgetStyle("title"),
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text("1/10"),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  " 1 : بزرگ ترین عدد فرد را انتخاب کنید ",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(
                  width: Get.width,
                  height: Get.height / 1.5,
                  child: ListView.builder(
                    itemCount: test.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(18),
                      child: Obx(
                        () => Container(
                          decoration: BoxDecoration(
                              color: theme.cardColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  test[index],
                                  maxLines: 3,
                                ),
                                Radio(
                                  onChanged: (value) {
                                    this.index.value = index;
                                    value = this.index.value;
                                  },
                                  groupValue: this.index.value,
                                  value: index,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () {}, child: Text(MyString.btnStartViewBack)),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(NamedRoute.resultView);
                },
                child: Text(MyString.btnStarViewNext)),
          ],
        ),
      ),
    );
  }
}
