import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:medica_app/resources/import_resources.dart';
import 'package:medica_assets/medica_assets.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textDesign = Theme.of(context).textTheme;
    return Scaffold(
      appBar: WidgetAppBar(
        title: "Notifications",
        actions: [
          IcnButton(
              onPressed: () {},
              iconAsset: MyMedicaAssets.icons.moreBlack.image(height: 21.h))
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0).w,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 5,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    padding: const EdgeInsets.all(10),
                    height: 145.h,
                    width: double.infinity,
                    // color: Colors.pink,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 25.w,
                              backgroundColor: myColorsExtension.secondary,
                              child: MyMedicaAssets.icons.timetableFilled
                                  .image(height: 20.h),
                            ),
                            Container(
                              height: 40.h,
                              margin: const EdgeInsets.only(left: 12).r,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  DesignText(
                                      style: textDesign
                                          .headlineSmall!
                                          .copyWith(fontSize: 18.sp),
                                      text: "Appointment Success!",
                                      padding: 0),
                                  DesignText(
                                      style: textDesign
                                          .titleMedium!
                                          .copyWith(
                                              fontSize: 12.sp,
                                              color:
                                                  myColorsExtension.greyColor),
                                      text: "Today | 15.36 PM",
                                      padding: 0),
                                ],
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "You have successfully booked an appointment with Dr. Alan watson on December 24, 2024 ,10.00 am. Don't to activate your remainder ",
                            style: textDesign
                                .bodyLarge!
                                .copyWith(color: myColorsExtension.greyColor),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}


