import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:medica_app/resources/import_resources.dart';
import 'package:medica_assets/medica_assets.dart';

class DoctorSpeciality extends StatelessWidget {
  const DoctorSpeciality({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textDesign = Theme.of(context).textTheme;

    return Scaffold(
      appBar: WidgetAppBar(
        title: "Doctor Specialities",
        actions: [
          IcnButton(
              onPressed: () {},
              iconAsset: MyMedicaAssets.icons.moreBlack.image(height: 21.h))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15).w,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
              itemCount: DoctorData.doctorSpeciality.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Card(
                    shadowColor: myColorsExtension.secondary,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: myColorsExtension.card_border_color,
                            width: 1),
                        borderRadius:
                            BorderRadius.all(const Radius.circular(20).w)),
                    child: ListTile(
                      contentPadding: const EdgeInsets.only(right: 10,left: 3).r,
                      onTap: () {
                        debugPrint("Special");
                      },
                      leading: CircleAvatar(
                        radius: 40,
                        backgroundColor: myColorsExtension.secondary,
                        child: Image.asset(
                          DoctorData.doctorSpeciality[index]["icon"].toString(),
                          color: myColorsExtension.primary,
                          height: 28.h,
                        ),
                      ),
                      title: DesignText(
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontWeight: FontWeight.w600, fontSize: 14.sp),
                        text: DoctorData.doctorSpeciality[index]["label"]
                            .toString(),
                        padding: 0,
                      ),
                      subtitle: const Text("40 Doctors "),
                      trailing: const Icon(Icons.chevron_right),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
