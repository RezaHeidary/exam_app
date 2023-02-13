import 'package:exam_app/route/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeWidget {
  HomeWidget._();

  static widgetHome() {
    return ListView.builder(
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(14),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(NamedRoute.singleMangeTest);
                },
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(4),
                  child: Container(
                    height: Get.height / 5,
                    width: Get.width,
                    decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(4)),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(14),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Title",
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              const Text("فرصت ها : 2")
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(14),
                          child: Text(
                            "مهلت شرکت در ازمون از 1400/12/1 تا 1401/1/1",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }
}
