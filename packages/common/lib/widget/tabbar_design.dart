import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../common.dart';

class TabBarDesign extends StatelessWidget {
  TabBarDesign({
    super.key,
    required this.tabs,
  });

  List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ButtonsTabBar(
          backgroundColor: myColorsExtension.primary,
          unselectedBackgroundColor: myColorsExtension.whiteColor,
          unselectedLabelStyle:  TextStyle(
            color: myColorsExtension.primary,
          ),
          labelStyle:  TextStyle(
            color: myColorsExtension.secondary,
            fontWeight: FontWeight.bold,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20).r,
          borderColor: myColorsExtension.primary,
          radius: 20,
          borderWidth: 2,
          unselectedBorderColor: myColorsExtension.onPrimary,
          tabs: tabs),
    );
  }
}
