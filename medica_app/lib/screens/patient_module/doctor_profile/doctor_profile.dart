import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:medica_app/resources/import_resources.dart';
import 'package:medica_assets/medica_assets.dart';
import '../../../../provider/provider.dart';

class DoctorProfile extends StatelessWidget {
  final String name;
  final String image;
  final String review;
  final String special;

  const DoctorProfile(
      {Key? key,
      required this.name,
      required this.image,
      required this.review,
      required this.special})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textDesign = Theme.of(context).textTheme;

    Future<void> share() async {
      await FlutterShare.share(
          title: 'Example share',
          text: 'Doctor Name: $name \nSpecialist : $special \nReview : $review',
          chooserTitle: 'Example Chooser Title');
    }

    return Scaffold(
      appBar: WidgetAppBar(
        title: name,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12).r,
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.favorite_border,
                color: myColorsExtension.onSecondary,
                size: 21.h,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16).r,
            child: GestureDetector(
              onTap: share,
              child: Icon(
                Icons.share,
                size: 21.h,
                color: myColorsExtension.onSecondary,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                doctorCard(),
                Container(
                  margin: EdgeInsets.only(top: 10.r),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15)
                          .w,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: myColorsExtension.background_grey_color,
                          width: 1.4),
                      borderRadius: BorderRadius.circular(20).w),
                  child: Row(
                    children: const [
                      DoctorInformation(
                          number: '5000+',
                          title: 'Patients',
                          icon: Icons.people),
                      Spacer(),
                      DoctorInformation(
                          number: '15+',
                          title: 'Years experiences',
                          icon: Icons.person),
                      Spacer(),
                      DoctorInformation(
                          number: '3800+',
                          title: 'Reviews',
                          icon: Icons.message_rounded)
                    ],
                  ),
                ),
                aboutDoctor(context),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20).w,
                      border: Border.all(color: myColorsExtension.greyColor)),
                  child: Padding(
                    padding: const EdgeInsets.all(10).w,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(
                              DoctorData.reviewOfPatient[0]['Image']),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              DoctorData.reviewOfPatient[0]['Name'],
                              style: TextStyle(fontSize: 15.sp),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 6.0, bottom: 6).r,
                              child: Text(
                                DoctorData.reviewOfPatient[0]['Date'],
                                style: TextStyle(fontSize: 10.sp),
                              ),
                            ),
                            Text(
                              DoctorData.reviewOfPatient[0]['feedback'],
                            )
                          ],
                        ),
                        const Spacer(),
                        Container(
                          decoration: BoxDecoration(
                              color: myColorsExtension.primary,
                              borderRadius: BorderRadius.circular(10).w),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children:  [
                                Icon(
                                  Icons.star,
                                  color: myColorsExtension.whiteColor,
                                  size: 22,
                                ),
                                Text(
                                  ' 5 ',
                                  style: TextStyle(
                                    color: myColorsExtension.whiteColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // makeAppointment(),

              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.all(15).r,
        child: BlueButton(
          height: 45,
          width: 400,
          onPressed: () {
            Get.toNamed('/BookAppointment');
          },
          borderRadius: 30,
          child: const Text("Booking Appointment"),
        ),
      ),
    );
  }

  Column aboutDoctor(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10).r,
          child: Text(
            'About Doctor',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10).w,
          child: Text(
            'Dr. Jenny Wilson is the top most Cardiologist specialist in Divine Hospital at London. She achieved several awards for her wonderful contribution in medical field. She is available for private consultation.',
            style:Theme.of(context).textTheme.bodyLarge ,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10).r,
          child: Text(
            'Working Time',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10).w,
          child:  Text('Mon - Fri, 09.00 AM - 06.00 PM',style: Theme.of(context).textTheme.bodyLarge ,),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 10).r,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DesignText(
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.w600, fontSize: 18.sp),
                  text: "Reviews",
                  padding: 10),
              GestureDetector(
                onTap: () {
                  Get.toNamed("/ReviewScreen");
                },
                child: DesignText(
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                        color: myColorsExtension.onPrimary),
                    text: "See All",
                    padding: 10),
              ),
            ],
          ),
        )
      ],
    );
  }

  Container doctorCard() {
    return Container(
      decoration: BoxDecoration(
        color: myColorsExtension.whiteColor                                                                                                                                  ,
        borderRadius: BorderRadius.circular(20).w,
        border: Border.all(
          color: myColorsExtension.greyColor,
        ),
      ),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              child: Image.asset(
                image,
                height: 90.h,
                width: 100.w,
                fit: BoxFit.cover,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 15).r,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 16.sp,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10).r,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyMedicaAssets.icons.rating.image(
                          height: 13.h, color: myColorsExtension.primary),
                      Text(
                        review,
                        style: TextStyle(fontSize: 12.sp),
                      ),
                    ],
                  ),
                ),
                Text(
                  special,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
