import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:medica_app/resources/import_resources.dart';
import 'package:medica_assets/medica_assets.dart';
import '../../../../../../provider/provider.dart';

class PatientDetail extends StatelessWidget {
  const PatientDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textDesign = Theme.of(context).textTheme;

    var items = ['Male', 'Female'];

    String dropDownValue = 'Select Gender';

    return Scaffold(
      appBar: const WidgetAppBar(
        title: "Patient details",
      ),
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18, vertical: 8).r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const NormalTextFiled(
                    readOnly: false,
                    topPadding: 0,
                    leftPadding: 0,
                    hintText: "Enter Full name",
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
                  const NormalTextFiled(
                    hintText: 'Enter Age',
                    topPadding: 0,
                    leftPadding: 0,
                    readOnly: false,
                    keyboardType: TextInputType.number,
                  ),
                  const NormalTextFiled(
                    hintText: 'Enter Phone Number',
                    topPadding: 0,
                    leftPadding: 0,
                    readOnly: false,
                    keyboardType: TextInputType.phone,
                    child: Icon(
                      Icons.call,
                    ),
                  ),
                  SizedBox(
                    height: 120.h,
                    child: const NormalTextFiled(
                      hintText: 'Write Your Problem',
                      topPadding: 0,
                      leftPadding: 0,
                      readOnly: false,
                      keyboardType: TextInputType.multiline,
                      maxLine: 5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 15.0, left: 15, right: 15).r,
        child: BlueButton(
          height: 45,
          width: 400,
          borderRadius: 30,
          onPressed: () {
            ShowDialog.ShowDialogBox(
              context,
              image: MyMedicaAssets.images.appointmentBook.keyName,
              title: "Congratulations",
              body: "Appointment Successfully booked. The doctor,you selected will contact you.",
              buttonText: "Ok",
              navigation: "HomePage"
            );
          },
          child: const Text('Submit'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }


}
