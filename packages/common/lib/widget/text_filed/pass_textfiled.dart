import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica_assets/gen/assets.gen.dart';

import '../../common.dart';


// this is login and signup screen password text field
class PassField extends StatefulWidget {

  final TextEditingController textPassCtrl;
  final String hintText;
  final Widget iconAsset;

  PassField(
      {required this.hintText,
        required this.textPassCtrl,
        required this.iconAsset,
      });

  @override
  State<PassField> createState() => _PassFieldState();
}

class _PassFieldState extends State<PassField> {
  bool obSure = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      margin: const EdgeInsets.only(top: 20).r,
      padding: const EdgeInsets.only(left: 20, right: 20).r,
      decoration: BoxDecoration(
          border: Border.all(color:myColorsExtension.textfilled_border_color,width: 1),
          borderRadius: BorderRadius.circular(20).w),
      child: Row(
        children: [
          widget.iconAsset,
          Expanded(
              child: TextFormField(
                cursorColor: myColorsExtension.onPrimary,
                obscureText: obSure,
                controller: widget.textPassCtrl,
                decoration: InputDecoration(
                    hintText: widget.hintText,
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.only(left: 15).r),
              )),
          IconButton(
              onPressed: () {
                setState(() {
                  obSure = !obSure;
                });
              },
              icon: obSure
                  ?  MyMedicaAssets.icons.hidden.image(height: 25.h)
                  : MyMedicaAssets.icons.visibility.image(height: 25.h), )
        ],
      ),
    );
  }
}