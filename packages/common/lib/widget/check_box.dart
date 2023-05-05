import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: 19.w,
      child: Checkbox(
        activeColor: myColorsExtension.onPrimary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        checkColor: Colors.white,
        value: isChecked,
        // visualDensity: VisualDensity(horizontal: -4, vertical: -4),
        onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
          });
        },
      ),
    );
  }
}
