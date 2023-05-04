import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ShowDialog {

  static Future<dynamic> ShowDialogBox(BuildContext context,
      {required String image,
        required String title,
        required String body,
        required String buttonText,
        required String navigation}) {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20).w),
          child: Padding(
            padding: const EdgeInsets.all(20).w,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(image),
                Padding(
                  padding: const EdgeInsets.all(8.0).w,
                  child: Text(title,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(color: myColorsExtension.onPrimary)),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20).w,
                  child: Text(
                   body,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                BlueButton(
                  height: 30,
                  width: 150,
                  borderRadius: 30,
                  onPressed: () {
                    Get.offAllNamed('/$navigation');
                  },
                  child:  Text(
                    buttonText,
                  ),
                )
              ],
            ),
          ),
        );
      },
      barrierDismissible: true,
    );
  }
}