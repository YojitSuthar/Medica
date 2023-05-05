import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopDoctorScreen extends StatelessWidget {
  TopDoctorScreen({Key? key}) : super(key: key);
  List<Widget> tabs = [
    const Tab(
      text: 'All',
    ),
    const Tab(
      text: 'Cardio',
    ),
    const Tab(
      text: 'Dental',
    ),
    const Tab(
      text: 'Eye',
    ),
    const Tab(
      text: 'Brain',
    ),
    const Tab(
      text: 'Child',
    ),
    const Tab(
      text: 'Nerve',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WidgetAppBar(
        title: "Top Doctor",
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16).r,
            child: Icon(
              size: 21.h,
              Icons.filter_list_rounded,
              color: myColorsExtension.onSecondary,
            ),
          ),
        ],
      ),
      body: DefaultTabController(
        length: tabs.length,
        child: Column(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 15.w,),
                  TabBarDesign(
                    tabs: tabs,
                  ),
                  SizedBox(width: 15.w,),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: DoctorData.topDoctor.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15).w,
                    child: BoxDesign(
                      image: DoctorData.topDoctor[index]["Image"],
                      name: DoctorData.topDoctor[index]["Name"].toString(),
                      work: DoctorData.topDoctor[index]["work"].toString(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
