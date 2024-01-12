import 'controller/welcome_controller.dart';
import 'package:flutter/material.dart';
import 'package:trast/core/app_export.dart';
import 'package:trast/widgets/custom_elevated_button.dart';
import 'package:trast/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class WelcomeScreen extends GetWidget<WelcomeController> {
  const WelcomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: appTheme.gray50,
      body: SizedBox(
        width: SizeUtils.width,
        child: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.gray50,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgSplash,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: SafeArea(
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 53.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgArtboard44x2,
                      height: 46.v,
                      width: 73.h,
                    ),
                    SizedBox(height: 14.v),
                    Container(
                      width: 299.h,
                      margin: EdgeInsets.symmetric(horizontal: 17.h),
                      child: Text(
                        "msg_welcome_to_trast".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.headlineSmallOnSecondaryContainer,
                      ),
                    ),
                    SizedBox(height: 57.v),
                    _buildWidgetStack(),
                    SizedBox(height: 17.v),
                    CustomElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.loginScreen);
                      },
                      height: 60.v,
                      text: "lbl_login".tr,
                      buttonStyle: CustomButtonStyles.none,
                      decoration:
                          CustomButtonStyles.gradientYellowToPrimaryDecoration,
                      buttonTextStyle: theme.textTheme.titleLarge!,
                    ),
                    SizedBox(height: 26.v),
                    Text(
                      "lbl_or".tr,
                      style: CustomTextStyles.bodyLargeInter,
                    ),
                    SizedBox(height: 1.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgVector1,
                      height: 1.v,
                      width: 31.h,
                    ),
                    SizedBox(height: 24.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // CustomIconButton(
                        //   height: 46.adaptSize,
                        //   width: 46.adaptSize,
                        //   padding: EdgeInsets.all(2.h),
                        //   child: CustomImageView(
                        //     imagePath: ImageConstant.imgFacebook,
                        //   ),
                        // ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 6.h,
                            top: 4.v,
                            bottom: 3.v,
                          ),
                          child: CustomIconButton(
                            height: 64.adaptSize,
                            width: 64.adaptSize,
                            padding: EdgeInsets.all(7.h),
                            decoration: IconButtonStyleHelper.fillGrayTL10,
                            child: Image.network(
                                'http://pngimg.com/uploads/google/google_PNG19635.png',
                                fit:BoxFit.cover
                            )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          // child: CustomIconButton(
                          //   height: 46.adaptSize,
                          //   width: 46.adaptSize,
                          //   child: CustomImageView(
                          //     imagePath: ImageConstant.imgImage1,
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.v),
                    _buildButtonColumn(context),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWidgetStack() {
    return SizedBox(
      height: 241.v,
      width: 302.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse5,
            height: 80.v,
            width: 81.h,
            radius: BorderRadius.circular(
              40.h,
            ),
            alignment: Alignment.topLeft,
          ),
          Opacity(
            opacity: 0.3,
            child: CustomImageView(
              imagePath: ImageConstant.imgEllipse12,
              height: 155.adaptSize,
              width: 155.adaptSize,
              radius: BorderRadius.circular(
                77.h,
              ),
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(bottom: 2.v),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse6,
            height: 153.v,
            width: 154.h,
            radius: BorderRadius.circular(
              77.h,
            ),
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 24.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse7,
            height: 70.adaptSize,
            width: 70.adaptSize,
            radius: BorderRadius.circular(
              35.h,
            ),
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 4.v,
              right: 16.h,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse8,
            height: 47.adaptSize,
            width: 47.adaptSize,
            radius: BorderRadius.circular(
              23.h,
            ),
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(
              left: 19.h,
              bottom: 50.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse10,
            height: 37.v,
            width: 36.h,
            radius: BorderRadius.circular(
              18.h,
            ),
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              left: 120.h,
              top: 8.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse11,
            height: 24.adaptSize,
            width: 24.adaptSize,
            radius: BorderRadius.circular(
              12.h,
            ),
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(left: 67.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse9,
            height: 61.adaptSize,
            width: 61.adaptSize,
            radius: BorderRadius.circular(
              30.h,
            ),
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(bottom: 32.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineDeepOrange.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder18,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.registerScreen);
            },
            child: Text("Don't have account yet? Sign up here",
              style: CustomTextStyles.bodySmallInterfffe554a,
            ),
          ),
        ],
      ),
    );
  }
}
