import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica_assets/medica_assets.dart';

class BoxDesign extends StatelessWidget {
  const BoxDesign({
    super.key,
    required this.image,
    required this.name,
    required this.work,
  });

  final String image;
  final String name;
  final String work;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.h,
      margin: EdgeInsets.only(top: 10.r),
      decoration: BoxDecoration(
        color: myColorsExtension.whiteColor,
        border: Border.all(
            color: myColorsExtension.card_border_color, width: 1.2.w),
        borderRadius: BorderRadius
            .circular(25)
            .w,
      ),
      child: Row(
        children: [
          Container(
            width: 100.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover),
              borderRadius: BorderRadius
                  .only(
                  topLeft: const Radius.circular(21).w,
                  bottomLeft: const Radius.circular(21).w)
                  .w,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 140.w,
                        child: DesignText(
                            style: Theme
                                .of(context)
                                .textTheme
                                .titleMedium!,
                            text: name,
                            padding: 0),
                      ),
                      const Spacer(),
                      IconButton(
                        padding: const EdgeInsets.all(5),
                        constraints: const BoxConstraints(),
                        onPressed: () {},
                        icon: MyMedicaAssets.icons.heartFilled.image(
                            height: 20.h, color: myColorsExtension.onPrimary),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Divider(
                      color: myColorsExtension.greyColor,
                      thickness: 1,
                    ),
                  ),
                  DesignText(
                      style: Theme
                          .of(context)
                          .textTheme
                          .titleMedium!.copyWith(fontSize: 13.sp)
                          .copyWith(color: myColorsExtension.greyColor),

                      text: work,
                      padding: 0),
                  Container(
                    width: 140.w,
                    margin: EdgeInsets.only(top: 7.r),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyMedicaAssets.icons.rating.image(
                            height: 13.h, color: myColorsExtension.onPrimary),
                        DesignText(
                            text: "4.3 (5,735 reviews) ",
                            style: Theme
                                .of(context)
                                .textTheme
                                .titleSmall!.copyWith(color: myColorsExtension.darkGrey,fontSize: 13.sp),

                            padding: 0)
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
