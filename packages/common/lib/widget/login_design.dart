import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica_assets/gen/assets.gen.dart';


class CompanyLoginDesign extends StatelessWidget {
  const CompanyLoginDesign({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 180.h,
        child: Column(
          children: [
            SizedBox(
                height: 130.h,
                child:  MyMedicaAssets.images.companyLogo.image(),),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(label,style: TextStyle(fontSize: 22.sp),),
            )

          ],
        ),
      ),
    );
  }
}