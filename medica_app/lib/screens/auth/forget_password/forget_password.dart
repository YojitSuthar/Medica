import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:medica_app/resources/import_resources.dart';
import 'package:medica_assets/medica_assets.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({Key? key}) : super(key: key);
  final TextEditingController emailCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BackIconButton(),
              const CompanyLoginDesign(
                label: "Forget Password",
              ),
              NormalTextFiled(
                readOnly: false,
                prefixIcon:
                    MyMedicaAssets.icons.mailInboxApp.image(height: 28.h),
                topPadding: 0,
                leftPadding: 10,
                hintText: "Email",
                controller: emailCtrl,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20).r,
                child: BlueButton(
                  height: 45,
                  width: 400,
                  onPressed: () {},
                  borderRadius: 30,
                  child: const Text("Sent"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
