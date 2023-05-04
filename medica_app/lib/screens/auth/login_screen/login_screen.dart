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
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(15).w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BackIconButton(),
                  const CompanyLoginDesign(
                    label: "Login to your account",
                  ),
                  NormalTextFiled(
                    readOnly: false,
                    prefixIcon:
                        MyMedicaAssets.icons.mailInboxApp.image(height: 28.h),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CheckBoxWidget(),
                      Text(
                        "Remember me",
                        style: Theme.of(context).textTheme.titleSmall,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10).r,
                    child: BlueButton(
                      height: 45,
                      width: 400,
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
                      child: const Text("Sign in",),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10).r,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed('/ForgetPassword');
                      },
                      child: Center(
                          child: Text(
                        "Forget the Password?",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!.copyWith(fontWeight: FontWeight.w500,color: myColorsExtension.primary)
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25, bottom: 25),
                    child: Row(children: [
                      Expanded(
                        child: Container(
                            margin:
                                const EdgeInsets.only(left: 10.0, right: 20.0)
                                    .r,
                            child: const Divider(
                              thickness: 1,
                            )),
                      ),
                      const Text("Or continue with",),
                      Expanded(
                        child: Container(
                            margin:
                                const EdgeInsets.only(left: 20.0, right: 10.0)
                                    .r,
                            child: const Divider(
                              thickness: 1,
                            )),
                      ),
                    ]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BoxSigninOption(
                        iconAsset: MyMedicaAssets.icons.facebook.image(),
                      ),
                      BoxSigninOption(
                        iconAsset: MyMedicaAssets.icons.google.image(),
                      ),
                    ],
                  ),
                    Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10).r,
                    child: Center(
                      child: RichTxt(
                        text_1: 'Don\'t have any account? ',
                        text_2: ' Sign up',
                        onTap: () {
                          Get.toNamed("/SignupScreen");
                        },
                        style_1: Theme.of(context).textTheme.titleMedium!,
                        style_2: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: myColorsExtension.font_blue,fontWeight: FontWeight.bold),
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
