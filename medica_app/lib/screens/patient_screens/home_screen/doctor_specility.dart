import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:medica_app/resources/import_resources.dart';
import 'package:medica_assets/medica_assets.dart';


class DoctorSpeciality extends StatelessWidget {
  const DoctorSpeciality({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackIconButton(),
        automaticallyImplyLeading: false,
        elevation: 0,
        titleSpacing: 5,
        title: DesignText(
            text: "Doctor Speciality",
            style: Theme.of(context).textTheme.displaySmall!,
            padding: 0),
        actions: [
          IcnButton(onPressed: () {}, iconAsset: MyMedicaAssets.icons.moreBlack.image())
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15).w,
          child: Column(
            children: [
            ],
          ),
        ),
      ),
    );
  }
}
