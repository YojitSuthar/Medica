import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../common.dart';

class SignInOption extends StatelessWidget {
  const SignInOption({
    super.key,
    required this.label,
    required this.icon,
  });
  final String label;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      padding: EdgeInsets.only(left: 75.r),
      margin: const EdgeInsets.only(top: 15).r,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.w),
          border: Border.all(color: myColorsExtension.def_border_color)),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          icon,
          Container(
              margin: const EdgeInsets.only(left: 10).r,
              child: Text(
                label,
                style: Theme.of(context).textTheme.titleMedium,
              ))
        ],
      ),
    );
  }
}

class BoxSigninOption extends StatelessWidget {
  const BoxSigninOption({
    super.key,
    required this.iconAsset,
  });
  final Widget iconAsset;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 60.w,
      margin: const EdgeInsets.only(right: 15).r,
      padding: EdgeInsets.all(13.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18).w,
          border: Border.all(
              color: myColorsExtension.def_border_color, width: 1.0)),
      child: iconAsset,
    );
  }
}
