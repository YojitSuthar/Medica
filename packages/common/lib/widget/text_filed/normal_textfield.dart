import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common.dart';

class NormalTextFiled extends StatelessWidget {
  const NormalTextFiled({
    super.key,
    required this.hintText,
    this.controller,
    required this.topPadding,
    required this.leftPadding,
    required this.readOnly,
    this.prefixIcon,
    this.child,
    this.backgroundColor,
    this.keyboardType,
    this.maxLine,
  });

  final String hintText;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final Widget? child;
  final double topPadding;
  final double leftPadding;
  final bool readOnly;
  final Color? backgroundColor;
  final TextInputType? keyboardType;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 17).r,
      padding: const EdgeInsets.only(left: 15, right: 15).r,
      height: 45.h,
      decoration: BoxDecoration(
          color: backgroundColor == null
              ? myColorsExtension.whiteColor
              : backgroundColor,
          border: Border.all(
              color: myColorsExtension.textfilled_border_color, width: 1.4),
          borderRadius: BorderRadius.circular(15).w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: TextFormField(
            maxLines: maxLine,
            keyboardType: keyboardType,
            cursorColor: myColorsExtension.onPrimary,
            textInputAction: TextInputAction.next,
            controller: controller,
            readOnly: readOnly,
            decoration: InputDecoration(
                icon: prefixIcon,
                hintText: hintText,
                contentPadding:
                    EdgeInsets.only(left: leftPadding, top: topPadding),
                border: InputBorder.none),
          )),
          child == null
              ? Container()
              : Container(
                  child: child,
                )
        ],
      ),
    );
  }
}
