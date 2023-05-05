import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:medica_app/resources/import_resources.dart';
import 'package:medica_assets/medica_assets.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WidgetAppBar(
        title: "My Favourite",
        actions: [
          Row(
            children: [
              IcnButton(
                  onPressed: () {},
                  iconAsset: MyMedicaAssets.icons.searchBlack.image(height: 21.h)),
              IcnButton(
                  onPressed: () {},
                  iconAsset: MyMedicaAssets.icons.moreBlack.image(height: 21.h))
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15).w,
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: DoctorData.topDoctor.length,
                  itemBuilder: (BuildContext context, index) {
                    return GestureDetector(
                      onTap: () {
                        debugPrint("Tap");
                        buildShowModalBottomSheet(
                            context);
                      },
                      child: BoxDesign(
                        image: DoctorData.topDoctor[index]["Image"].toString(),
                        name: DoctorData.topDoctor[index]["Name"].toString(),
                        work: DoctorData.topDoctor[index]["work"].toString(),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> buildShowModalBottomSheet(
      BuildContext context) {
    return showModalBottomSheet<void>(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: const Radius.circular(20).w,
          topLeft: const Radius.circular(20).w,
        ).w,
      ),
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 25, right: 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5.0).r,
                child: Container(
                  height: 3.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                      color: myColorsExtension.greyColor,
                      borderRadius: BorderRadius.circular(20).w),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  'Remove from favorite?',
                  style: TextStyle(fontSize: 15.sp),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5).r,
                    child: BlueButton(
                      height: 40,
                      width: 150,
                      onPressed: () {
                        Get.back();
                      },
                      borderRadius: 30,
                      child: Text("Cancel",
                          ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5).r,
                    child: BlueButton(
                      height: 40,
                      width: 150,
                      onPressed: () {
                        Get.back();
                      },
                      borderRadius: 30,
                      child: const Text("Yes,Remove"),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
