import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:medica_assets/medica_assets.dart';
import '../../../resources/import_resources.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();

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
        appBar: const WidgetAppBar(title: " "),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(15).w,
              child: Column(
                children: [
                  const CompanyLoginDesign(
                    label: "Welcome back!",
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      PassField(
                        hintText: "Password",
                        iconAsset: MyMedicaAssets.icons.lockedPadlock
                            .image(height: 20.h),
                        textPassCtrl: passwordCtrl,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5).r,
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed('/ForgetPassword');
                          },
                          child: Text("Forgot Password?",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: myColorsExtension.primary)),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30).r,
                    child: BlueButton(
                      height: 45,
                      width: 310,
                      onPressed: () {
                        if (emailCtrl.text.contains("@medicadoctor.com")) {
                          Get.offAllNamed("/UserFillProfile");
                        } else if (emailCtrl.text
                            .contains("@medicaadmin.com")) {
                          Get.offAllNamed("/AdminScreen");
                        } else {
                          Get.offAllNamed("/UserFillProfile");
                        }
                      },
                      borderRadius: 30,
                      child: const Text(
                        "Sign in",
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30, bottom: 10).r,
                    child: Center(
                      child: RichTxt(
                        text_1: 'Don\'t have an account? ',
                        text_2: ' Sign up',
                        style_1: Theme.of(context).textTheme.titleMedium!,
                        style_2: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: myColorsExtension.font_blue,fontWeight: FontWeight.bold), onPress: () {
                        Get.toNamed("/SignupScreen");
                      },
                      ),
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
