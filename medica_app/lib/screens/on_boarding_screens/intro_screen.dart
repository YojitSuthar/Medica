import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:medica_assets/medica_assets.dart';
import '../../resources/import_resources.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0).w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyMedicaAssets.icons.doctor.image(fit: BoxFit.fill),
                Text(
                  "Welcome to\n Medica! 👋",
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(color: myColorsExtension.primary),
                ),
                Container(
                  padding: EdgeInsets.all(30.w),
                  child: Text(
                    "The best online doctor appointment & consultation app of the century for yout health and medical needs!",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                ),
                BlueButton(
                  height: 50,
                  width: 170,
                  onPressed: () {
                    Get.toNamed("/OnBoardingScreen");
                  },
                  borderRadius: 20,
                  child: const Text("Continue"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
