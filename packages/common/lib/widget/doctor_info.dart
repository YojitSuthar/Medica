import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../common.dart';

class DoctorInformation extends StatelessWidget {
  final String number;
  final String title;
  final IconData icon;
  const DoctorInformation({Key? key, required this.number, required this.title, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: myColorsExtension.secondary,
          child: Icon(
            icon,
            color: myColorsExtension.primary,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 5).r,
          child: Text(
            number,
            style:  TextStyle(
                color: myColorsExtension.primary),
          ),
        ),
        Text(
          title,
          style: TextStyle(fontSize: 14.sp),
        ),
      ],
    );
  }
}
