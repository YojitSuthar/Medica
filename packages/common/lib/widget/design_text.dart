import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class DesignText extends StatelessWidget {
  DesignText({
    super.key,
    required this.text,
    // required this.color,
    required this.padding,
    required this.style,

  });

  final String text;
  // final Color color;
  final double padding;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: padding).r,
      child: Text(
        text,
        style: style,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
