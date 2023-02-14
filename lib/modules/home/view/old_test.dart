import 'package:exam_app/route/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OldTestView extends StatelessWidget {
  const OldTestView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).cardColor.obs;

    return Scaffold(
        body: ListView.builder(
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(14),
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(NamedRoute.resultView);
                    },
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(4),
                      child: Obx(
                        () => Container(
                          width: Get.width,
                          decoration: BoxDecoration(
                              color: theme.value,
                              borderRadius: BorderRadius.circular(4)),
                          child: Padding(
                            padding: const EdgeInsets.all(14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Title",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                const Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )));
  }
}
