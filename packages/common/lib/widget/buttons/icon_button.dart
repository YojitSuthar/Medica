import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class IcnButton extends StatelessWidget {
  const IcnButton({
    super.key,
    required this.onPressed,
    required this.iconAsset,
  });

  final VoidCallback onPressed;
  final Widget iconAsset;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: iconAsset,
    );
  }
}
