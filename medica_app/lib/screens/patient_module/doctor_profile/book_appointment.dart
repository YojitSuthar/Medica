import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:medica_app/resources/import_resources.dart';
import '../../../../../../provider/provider.dart';

class BookAppointment extends StatelessWidget {
  BookAppointment({Key? key}) : super(key: key);

  bool hour = false;

  List<String> hourList = [
    '10.00 AM',
    '10.30 AM',
    '11.00 AM',
    '11.30 AM',
    '12.00 PM',
    '12.30 PM',
    '1.00 PM',
    '5.00 PM',
    '5.30 PM',
    '6.00 PM',
    '6.30 PM',
    '7.00 PM'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WidgetAppBar(
        title: "Book Appointment",
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15).r,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Make Appointment',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Consumer<PickDateProvider>(
                  builder: (context, value, child) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0).r,
                      child: DatePicker(
                        DateTime.now(),
                        height: 100,
                        width: 80,
                        initialSelectedDate: DateTime.now(),
                        selectionColor: myColorsExtension.onPrimary,
                        selectedTextColor: myColorsExtension.secondary,
                        dateTextStyle: TextStyle(
                          color: myColorsExtension.greyColor,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        dayTextStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        monthTextStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        onDateChange: (date) {
                          value.pickDate(date);
                        },
                      ),
                    );
                  },
                ),
                Text(
                  'Select Hour',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20).r,
                  child: GridView.builder(
                    itemCount: hourList.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.9 / 0.3,
                    ),
                    itemBuilder: (context, index) {
                      return Consumer<HourProvider>(
                        builder: (context,value,child) {
                          return  GestureDetector(
                            onTap: () {
                              value.hourChange(index);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20).w,
                                border: Border.all(
                                  color: myColorsExtension.onPrimary,
                                ),
                                color: (value.currentIndex == index)
                                    ? myColorsExtension.onPrimary
                                    : myColorsExtension.whiteColor,
                              ),
                              child: Center(
                                child: Text(
                                  hourList[index],
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge!
                                      .copyWith(
                                    color: value.currentIndex == index
                                        ? myColorsExtension.whiteColor
                                        : myColorsExtension.onPrimary,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15).r,
        child: BlueButton(
          height: 45,
          width: 400,
          borderRadius: 30,
          onPressed: () {
            Get.toNamed('/PatientDetail');
          },
          child: const Text(
            'Next',
          ),
        ),
      ),
    );
  }
}
