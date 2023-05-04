import 'package:common/common.dart';
import 'package:flutter/material.dart';


class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.1  ,
      child: Checkbox(
        activeColor: myColorsExtension.onPrimary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        checkColor: Colors.white,
        value: isChecked,
        onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
          });
        },
      ),
    );
  }
}
