import 'package:exam_app/core/theme/style.dart';
import 'package:exam_app/route/pages.dart';
import 'package:exam_app/core/value/str.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SingleTestMangeView extends StatelessWidget {
  const SingleTestMangeView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).obs;
    return Scaffold(
      appBar: MyStyle.widgetStyle(MyString.singleManageNewTest),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                width: Get.width,
                height: Get.height / 3,
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: CachedNetworkImage(
                    imageUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAaiygGvP7mem_5VNJJu4k3FAf-UIxDX3yXA&usqp=CAU",
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    placeholder: (context, url) =>
                        LoadingAnimationWidget.dotsTriangle(
                      size: 50,
                      color: Theme.of(context).cardColor,
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                "موضوع",
                style: theme.value.textTheme.titleLarge,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                """ طول این آبراه ۱۵۸ تا ۱۶۷ کیلومتر و عرض آن از بندرعباس تا راس شوریطه در عمان بین ۵۶ تا ۸۷ (۳۹ تا ۹۶) کیلومتر می‌باشد. ژرفای تنگه هرمز از خلیج فارس بیشتر است و به دلیل شیب تند کف آن از قسمت شمال به جنوب متغیر است، به طوری که نزدیکی جزیره لارک، در حدود ۳۶ متر و در ساحل جنوبی و در نزدیکی شبه‌جزیره مسندم به بیش از ۱۰۰ متر می‌رسد. در حالی که حداکثر عمق آب در خلیج فارس ۹۰ متر است.[۵] قوس آن، رو به شمال و به طرف درون فلات ایران قرار دارد و در نتیجه بیشترین خط ساحلی آن در راستای کرانه‌های ایران قرار گرفته‌است.  """,
                style: theme.value.textTheme.bodyLarge,
              ),
            ),
            const SizedBox(
              height: 70,
            )
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 30.0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: ElevatedButton(
            onPressed: () {
              Get.toNamed(NamedRoute.startTestView);
            },
            child: SizedBox(
              width: Get.width / 2,
              child: Row(
                children: [
                  const Icon(Icons.app_registration_sharp),
                  SizedBox(
                    width: Get.width / 10,
                  ),
                  const Text("شروع تست"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
