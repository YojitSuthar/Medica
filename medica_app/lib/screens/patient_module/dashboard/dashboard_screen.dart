import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:medica_app/resources/import_resources.dart';
import 'package:medica_app/screens/patient_module/home_screen/home_screen.dart';
import '../../../provider/provider.dart';

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  static final List<Widget> _widgetOption = [
    HomePage(),
    const Text('Appointment'),
    const Text('Article'),
    const Text('Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      body: SafeArea(
        child: Consumer<BottomNavigationProvider>(
          builder: (context, value, child) {
            return _widgetOption[value.selectedIndex];
          },
        ),
      ),
      bottomNavigationBar: Consumer<BottomNavigationProvider>(
        builder: (context,value,child) {
          return BottomNavigationBar(
            backgroundColor: myColorsExtension.whiteColor,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month),
                label: 'Appointment',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.article),
                label: 'Article',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: value.selectedIndex,
            selectedItemColor: myColorsExtension.onPrimary,
            unselectedItemColor: myColorsExtension.greyColor,
            iconSize: 30,
            onTap: (index) {
              value.onItemTapped(index);
            },
          );
        },
      ),
    );
  }
}
