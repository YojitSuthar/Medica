import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:medica_app/resources/import_resources.dart';
import 'package:medica_assets/medica_assets.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();
  final TextEditingController usernameCtrl = TextEditingController();

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
            child: Padding(
              padding: const EdgeInsets.all(15).w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BackIconButton(),
                  const CompanyLoginDesign(
                    label: "Create new account",
                  ),
                  NormalTextFiled(
                    prefixIcon: MyMedicaAssets.icons.mailInboxApp.image(
                      height: 24.h,
                      color: myColorsExtension.greyColor,
                    ),
                    topPadding: 0,
                    leftPadding: 10,
                    hintText: "Username",
                    controller: usernameCtrl,
                    readOnly: false,
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
                        style: Theme.of(context).textTheme.titleMedium,
                      )
                    ],
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
                  Padding(
                    padding: const EdgeInsets.only(top: 25, bottom: 25),
                    child: Row(children: [
                      Expanded(
                        child: Container(
                            margin:
                                const EdgeInsets.only(left: 10.0, right: 20.0)
                                    .r,
                            child: Divider(
                              color: myColorsExtension.onSecondary,
                              thickness: 1,
                            )),
                      ),
                      const Text("Or continue with"),
                      Expanded(
                        child: Container(
                            margin:
                                const EdgeInsets.only(left: 20.0, right: 10.0)
                                    .r,
                            child: Divider(
                              thickness: 1,
                              color: myColorsExtension.onSecondary,
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
                    margin: const EdgeInsets.only(top: 20).r,
                    child: Center(
                      child: RichTxt(
                        style_1: Theme.of(context).textTheme.titleMedium!,
                        style_2: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                color: myColorsExtension.font_blue,
                                fontWeight: FontWeight.bold),
                        text_1: 'Already have an account?',
                        text_2: ' Sign in',
                        onTap: () {
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
