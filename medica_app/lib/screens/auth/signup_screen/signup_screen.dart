import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:medica_app/resources/import_resources.dart';
import 'package:medica_assets/medica_assets.dart';

import '../../screens.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();
  final TextEditingController usernameCtrl = TextEditingController();
  final TextEditingController firstNameCtrl = TextEditingController();
  final TextEditingController lastNameCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final textDesign = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: const WidgetAppBar(title: " "),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15).w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CompanyLoginDesign(
                    label: "Sign Up",
                  ),
                  NormalTextFiled(
                    topPadding: 0,
                    leftPadding: 0,
                    hintText: "First Name",
                    controller: firstNameCtrl,
                    readOnly: false,
                  ),
                  NormalTextFiled(
                    topPadding: 0,
                    leftPadding: 0,
                    hintText: "Last Name",
                    controller: lastNameCtrl,
                    readOnly: false,
                  ),
                  NormalTextFiled(
                    readOnly: false,
                    prefixIcon:
                        MyMedicaAssets.icons.mailInboxApp.image(height: 26.h),
                    topPadding: 0,
                    leftPadding: 0,
                    hintText: "Email",
                    controller: emailCtrl,
                  ),
                  PassField(
                    hintText: "Password",
                    iconAsset:
                        MyMedicaAssets.icons.lockedPadlock.image(height: 20.h),
                    textPassCtrl: passwordCtrl,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0).r,
                    child: Row(
                      children: [
                        const CheckBoxWidget(),
                        RichTxt(
                          text_1: 'Accept',
                          text_2: ' Terms & Condition',
                          onPress: () {
                            Get.to(
                              WebView(title: "Terms and Conditions",url: "https://www.google.com/"),
                              transition: Transition.fade,
                              duration: const Duration(milliseconds: 350),
                            );
                          },
                          style_1:textDesign
                              .bodyMedium!
                              .copyWith(color: myColorsExtension.greyColor),
                          style_2: textDesign
                              .bodyMedium!
                              .copyWith(
                                  color: myColorsExtension.font_blue,
                                  fontWeight: FontWeight.bold),
                        ),
                        RichTxt(
                          text_1: ' and ',
                          text_2: 'Privacy policy',
                          onPress: () {
                            Get.to(
                              WebView(title: "Privacy policy",url: "https://www.zignuts.com/"),
                              transition: Transition.fade,
                              duration: const Duration(milliseconds: 350),
                            );
                          },
                          style_1: textDesign
                              .bodyMedium!
                              .copyWith(color: myColorsExtension.greyColor),
                          style_2: textDesign
                              .bodyMedium!
                              .copyWith(
                                  color: myColorsExtension.font_blue,
                                  fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15).r,
                    child: BlueButton(
                      height: 45,
                      width: 400,
                      onPressed: () {},
                      borderRadius: 30,
                      child: const Text("Sign up"),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30).r,
                    child: Center(
                      child: RichTxt(
                        style_1: textDesign.titleMedium!.copyWith(color: myColorsExtension.greyColor),
                        style_2: textDesign
                            .titleMedium!
                            .copyWith(
                                color: myColorsExtension.font_blue,
                                fontWeight: FontWeight.bold),
                        text_1: 'Already have an account?',
                        text_2: ' Sign in',
                        onPress: () {
                          Get.toNamed("/LoginScreen");
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
