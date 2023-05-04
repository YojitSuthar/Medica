import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:medica_app/resources/import_resources.dart';
import '../../../provider/provider.dart';
import 'package:medica_assets/medica_assets.dart';

class UserFillProfile extends StatelessWidget {
  UserFillProfile({Key? key}) : super(key: key);

  DateTime selectedDate = DateTime.now();
  final TextEditingController nameCtrl = TextEditingController();
  final TextEditingController nickNameCtrl = TextEditingController();
  final TextEditingController dateCtrl = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      selectedDate = picked;
    }
  }

  var items = ['Male', 'Female'];

  String dropDownValue = 'Male';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title:  Text(
            "Fill your profile",
            style: TextStyle(color: myColorsExtension.onSecondary),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0).w,
              child: Column(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 70.w,
                        backgroundColor: myColorsExtension.secondary,
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          child: MyMedicaAssets.icons.mailInboxApp.image(),
                        ),
                      ),
                      Positioned(
                        left: 120,
                        top: 125,
                        child: Container(
                          padding: const EdgeInsets.all(3),
                          height: 25.h,
                          width: 35.w,
                          decoration: BoxDecoration(
                              color: myColorsExtension.secondary,
                              borderRadius: BorderRadius.circular(10)),
                          child: MyMedicaAssets.icons.edit.image(),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15).r,
                    child: NormalTextFiled(
                      readOnly: false,
                      topPadding: 0,
                      leftPadding: 0,
                      hintText: "Full name",
                      controller: nameCtrl,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5).r,
                    child: NormalTextFiled(
                      readOnly: false,
                      topPadding: 0,
                      leftPadding: 0,
                      hintText: "Nick name",
                      controller: nickNameCtrl,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5).r,
                    child: NormalTextFiled(
                      readOnly: true,
                      topPadding: 0,
                      leftPadding: 0,
                      hintText: "$selectedDate".split(' ')[0],
                      controller: null,
                      child: IconButton(
                          padding: const EdgeInsets.only(right: 3).r,
                          constraints: const BoxConstraints(),
                          icon:MyMedicaAssets.icons.calendar.image(height: 20.h),
                          onPressed: () {
                            _selectDate(context);
                          }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5).r,
                    child: NormalTextFiled(
                      readOnly: false,
                      topPadding: 0,
                      leftPadding: 0,
                      hintText: "Email",
                      controller: null,
                      child: MyMedicaAssets.icons.mailInboxApp.image(height: 28.h),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5).r,
                    child: Consumer<DropDown>(
                      builder: (context, value, child) {
                        return NormalTextFiled(
                          readOnly: true,
                          topPadding: 0,
                          leftPadding: 0,
                          hintText: dropDownValue,
                          controller: null,
                          child: DropdownButton(
                            underline: Container(),
                            isDense: true,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              dropDownValue = value.update(
                                  newValue.toString(), dropDownValue);
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30).r,
                    child: BlueButton(
                      height: 45,
                      width: 400,
                      onPressed: () {
                        Get.offAllNamed("/HomePage");
                      },
                      borderRadius: 30,
                      child: const Text("Continue"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
