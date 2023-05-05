import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:medica_app/resources/import_resources.dart';
import 'package:medica_assets/medica_assets.dart';
import '../patient.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final PageController controller = PageController();

  List<Map<String, dynamic>> doctorSpeciality = [
    {"label": "General", "icon": MyMedicaAssets.icons.people.keyName},
    {"label": "Dentist", "icon": MyMedicaAssets.icons.tooth.keyName},
    {"label": "Ophthalmologist", "icon": MyMedicaAssets.icons.eye.keyName},
    {"label": "Nutrition", "icon": MyMedicaAssets.icons.healthyFood.keyName},
    {"label": "Neurologist", "icon": MyMedicaAssets.icons.brain.keyName},
    {"label": "Pediatric", "icon": MyMedicaAssets.icons.family.keyName},
    {"label": "Radiologist", "icon": MyMedicaAssets.icons.joint.keyName},
    {"label": "More", "icon": MyMedicaAssets.icons.more.keyName},
  ];

  @override
  Widget build(BuildContext context) {
    final textDesign = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 50.h,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage:
                        AssetImage(MyMedicaAssets.images.profile.keyName),
                  ),
                  Container(
                    height: 40.h,
                    margin: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good morning 👋",
                          style: textDesign
                              .titleMedium!
                              .copyWith(
                                  color: myColorsExtension.greyColor,
                                  fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Andrew Ashely",
                          style: textDesign
                              .titleLarge!
                              .copyWith(fontSize: 15.sp),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            Row(
              children: [
                IcnButton(
                    onPressed: () {
                      debugPrint("NotificationScreen");
                      Get.toNamed("/NotificationScreen");
                    },
                    iconAsset:
                        MyMedicaAssets.icons.notification.image(height: 21.h)),
                IcnButton(
                    onPressed: () {
                      Get.toNamed("/WishListScreen");
                    },
                    iconAsset: MyMedicaAssets.icons.heart.image(height: 21.h)),
              ],
            )
          ],
          elevation: 0,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 15),
                  child: Column(
                    children: [
                      NormalTextFiled(
                        backgroundColor: myColorsExtension.background_grey_color,
                        prefixIcon: MyMedicaAssets.icons.search.image(height: 20.h),
                        readOnly: false,
                        topPadding: 0,
                        leftPadding: 0,
                        hintText: "Search",
                        controller: null,
                        child: IcnButton(
                            iconAsset: MyMedicaAssets.icons.option.image(),
                            onPressed: () {}),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15).w,
                        height: 160.h,
                        padding: EdgeInsets.all(15.w),
                        decoration: BoxDecoration(
                            color: myColorsExtension.greyColor,
                            image: DecorationImage(
                                image: AssetImage(
                                    MyMedicaAssets.images.background.keyName),
                                fit: BoxFit.cover),
                            boxShadow: [
                              BoxShadow(
                                  color: myColorsExtension.secondary,
                                  spreadRadius: 5,
                                  offset: const Offset(4, 7),
                                  blurRadius: 10)
                            ],
                            borderRadius: BorderRadius.circular(20.w)),
                        child: PageView(
                          onPageChanged: (index) {
                            print(index);
                          },
                          controller: controller,
                          children: const <Widget>[
                            SliderData(label: "Medical Checkups!"),
                            SliderData(label: "Health Checkups!"),
                            SliderData(label: "Body Checkups!"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15.r),
                        child: Center(
                          child: SmoothPageIndicator(
                            controller: controller,
                            count: 3,
                            effect: ExpandingDotsEffect(
                                dotHeight: 8.h,
                                dotWidth: 8.w,
                                activeDotColor: myColorsExtension.primary,
                                dotColor: myColorsExtension.greyColor),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DesignText(
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                  fontWeight: FontWeight.w600, fontSize: 15.sp),
                              text: "Doctor Speciality",
                              padding: 10),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed("/DoctorSpeciality");
                            },
                            child: DesignText(
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15.sp,
                                    color: myColorsExtension.onPrimary),
                                text: "See All",
                                padding: 10),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: doctorSpeciality.length,
                        gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 35,
                      childAspectRatio: 0.55,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundColor: myColorsExtension.secondary,
                            child: Image.asset(
                              doctorSpeciality[index]["icon"].toString(),
                              color: myColorsExtension.primary,
                              height: 28.h,
                            ),
                          ),
                          Center(
                            child: DesignText(
                              style: textDesign
                                  .titleMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15.sp),
                              text: doctorSpeciality[index]["label"].toString(),
                              padding: 5,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DesignText(
                          style: textDesign
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.w600, fontSize: 18.sp),
                          text: "Top Doctors",
                          padding: 10),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed("/TopDoctorScreen");
                        },
                        child: DesignText(
                            style: textDesign
                                .titleMedium!
                                .copyWith(
                                      fontSize: 13.sp),
                                  text: doctorSpeciality[index]["label"].toString(),
                                  padding: 5,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DesignText(
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                  fontWeight: FontWeight.w600, fontSize: 15.sp),
                              text: "Top Doctors",
                              padding: 10),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed("/TopDoctorScreen");
                            },
                            child: DesignText(
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15.sp,
                                    color: myColorsExtension.onPrimary),
                                text: "See All",
                                padding: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(width: 5,),
                      SizedBox(
                        height: 200.h,
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: DoctorData.topDoctor.length,
                          itemBuilder: (BuildContext context, index) {
                            return GestureDetector(
                              onTap: () {
                                Get.to(
                                  DoctorProfile(
                                    name: DoctorData.topDoctor[index]['Name'],
                                    image: DoctorData.topDoctor[index]['Image'],
                                    review: DoctorData.topDoctor[index]['Reviews'],
                                    special: DoctorData.topDoctor[index]['Special'],
                                  ),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10).w,
                                child: Container(
                                  width: 150.w,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: myColorsExtension.greyColor,
                                          width: 1.2),
                                      borderRadius: BorderRadius.circular(10).w),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 130.h,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(DoctorData
                                                    .topDoctor[index]["Image"]
                                                    .toString()),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        const Radius.circular(8).w,
                                                    topRight:
                                                        const Radius.circular(8).w)
                                                .r),
                                      ),
                                      SizedBox(
                                        width: 120.w,
                                        child: Center(
                                          child: DesignText(
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium!
                                                  .copyWith(
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 13.sp),
                                              text: DoctorData.topDoctor[index]
                                                      ["Name"]
                                                  .toString(),
                                              padding: 5),
                                        ),
                                      ),
                                      DesignText(
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium!
                                              .copyWith(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 11.sp,
                                                  color:
                                                      myColorsExtension.greyColor),
                                          text: DoctorData.topDoctor[index]
                                                  ["Special"]
                                              .toString(),
                                          padding: 0),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(width: 5,),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),

      ),
    );
  }
}

class SliderData extends StatelessWidget {

  const SliderData({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    final textDesign = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: myColorsExtension.secondary),
        ),
        Container(
          padding: EdgeInsets.only(right: 50.r),
          margin: EdgeInsets.only(top: 10.r),
          child: Text(
            "Check you health Condition regularly to minimize the incidence of the disease in future.",
            style: textDesign.titleSmall?.copyWith(
                fontSize: 14.sp, color: myColorsExtension.secondary),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: BlueButton(
            height: 25.h,
            width: 85.w,
            backgroundColor: myColorsExtension.secondary,
            borderRadius: 10,
            onPressed: () {},
            child: Text(
              "Check Now",
              style: textDesign.bodyLarge!.copyWith(
                  fontWeight: FontWeight.w700,
                  color: myColorsExtension.onPrimary),
            ),
          ),
        )
      ],
    );
  }
}
