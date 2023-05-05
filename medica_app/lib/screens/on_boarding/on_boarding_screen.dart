import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:medica_app/resources/import_resources.dart';
import 'package:medica_assets/medica_assets.dart';
import '../../../provider/provider.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    final button = Provider.of<ButtonProvider>(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15).w,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                    Get.offAllNamed("/SocialScreen");
                  },
                  child: Text(
                    'Skip',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: myColorsExtension.primary,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
              Expanded(
                child: PageView(
                  onPageChanged: (index) {
                    button.onChange(index);
                  },
                  controller: controller,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MyMedicaAssets.images.boardingimg1.image(height: 250.h),
                        Text(
                          "Thousands of doctors & experts to help your health! ",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                color: myColorsExtension.primary,
                                fontSize: 25.sp,
                              ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MyMedicaAssets.images.boardingimg2.image(height: 250.h),
                        Text(
                          "Health checks & consultations easily anywhere anytime",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                color: myColorsExtension.primary,
                                fontSize: 25.sp,
                              ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MyMedicaAssets.images.boardingimg3.image(height: 250.h),
                        Text(
                          "Let's start living healthy and well with us right now !",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                color: myColorsExtension.primary,
                                fontSize: 25.sp,
                              ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: ExpandingDotsEffect(
                    dotHeight: 10.h,
                    dotWidth: 10.w,
                    activeDotColor: myColorsExtension.primary,
                    dotColor: myColorsExtension.greyColor),
              ),
              Consumer<ButtonProvider>(builder: (context, value, child) {
                return Padding(
                  padding: const EdgeInsets.only(top: 40,bottom: 20),
                  child: BlueButton(
                    height: 45,
                    width: 310,
                    onPressed: value.change
                        ? () {
                            Get.offAllNamed("/SocialScreen");
                          }
                        : () {
                            controller.nextPage(
                                duration: const Duration(milliseconds: 250),
                                curve: Curves.easeIn);
                          },
                    borderRadius: 20,
                    child: value.change
                        ? const Text("Get Started")
                        : const Text("Next"),
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
