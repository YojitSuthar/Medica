import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WidgetAppBar(
        title: "Reviews",
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
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: DoctorData.reviewOfPatient.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10).w,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20).w,
                  border: Border.all(color: myColorsExtension.greyColor)),
              child: Padding(
                padding: const EdgeInsets.all(10).w,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,backgroundImage: AssetImage(
                      DoctorData.reviewOfPatient[index]['Image'],
                    ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          DoctorData.reviewOfPatient[index]['Name'],
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0, bottom: 6).r,
                          child: Text(
                            DoctorData.reviewOfPatient[index]['Date'],
                            style:  Theme.of(context).textTheme.labelLarge,
                          ),
                        ),
                        Text(
                          DoctorData.reviewOfPatient[index]['feedback'],
                        )
                      ],
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                          color: myColorsExtension.onPrimary,
                          borderRadius: BorderRadius.circular(10).w),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 22,
                            ),
                            index == 5
                                ?  const Text(
                              ' 4 ',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )
                                : index == 3
                                ?  const Text(
                              ' 2 ',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )
                                : index.isOdd
                                ?  const Text(
                              ' 5 ',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )
                                :  const Text(
                              ' 3 ',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
