import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:common/theme/theme.dart';
class BlueButton extends StatelessWidget {
  const BlueButton({
    super.key,
    required this.height,
    required this.width,
    required this.borderRadius,
    required this.onPressed,
    required this.child,
     this.backgroundColor,
  });

  final double height;
  final double width;
  final double borderRadius;
  final VoidCallback onPressed;
  final Widget child;
  final Color ?backgroundColor ;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shadowColor: myColorsExtension.greyColor,
            elevation: 3,
            backgroundColor: backgroundColor==null? myColorsExtension.onPrimary:backgroundColor,
            fixedSize: Size(width.w, height.h),
            shape: RoundedRectangleBorder(
                side:  BorderSide(color: myColorsExtension.btn_border_color),
                borderRadius: BorderRadius.circular(borderRadius).w)),
        onPressed: onPressed,
        child: child);
  }
}
