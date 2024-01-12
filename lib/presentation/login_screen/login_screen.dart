import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:trast/core/app_export.dart';
import 'package:trast/core/utils/validation_functions.dart';
import 'package:trast/widgets/custom_elevated_button.dart';
import 'package:trast/widgets/custom_icon_button.dart';
import 'package:trast/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
            width: SizeUtils.width,
            child: SingleChildScrollView(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Form(
                    key: _formKey,
                    child: SafeArea(
                      child: Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 26.v),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 8.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 1.h),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 26.v),
                                              child: CustomIconButton(
                                                  height: 40.adaptSize,
                                                  width: 40.adaptSize,
                                                  padding: EdgeInsets.all(13.h),
                                                  onTap: () {
                                                    onTapBtnArrowLeft();
                                                  },
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgArrowLeft))),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgArtboard44x2,
                                              height: 46.v,
                                              width: 73.h,
                                              margin: EdgeInsets.only(
                                                  left: 87.h, top: 19.v))
                                        ])),
                                SizedBox(height: 5.v),
                                Align(
                                    alignment: Alignment.center,
                                    child: Text("msg_login_to_your_account".tr,
                                        style: CustomTextStyles
                                            .headlineSmallOnSecondaryContainer)),
                                SizedBox(height: 11.v),
                                Container(
                                    width: 239.h,
                                    margin: EdgeInsets.only(
                                        left: 24.h, right: 71.h),
                                    child: Text("msg_good_to_see_you".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .bodyMediumInterGray80001
                                            .copyWith(height: 1.50))),
                                SizedBox(height: 47.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 24.h),
                                    child: Text("lbl_email_address".tr,
                                        style: CustomTextStyles
                                            .bodySmallInterGray80001)),
                                SizedBox(height: 10.v),
                                _buildEmail(),
                                SizedBox(height: 20.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 24.h),
                                    child: Text("lbl_password".tr,
                                        style: CustomTextStyles
                                            .bodySmallInterGray80001)),
                                SizedBox(height: 10.v),
                                _buildPassword(),
                                SizedBox(height: 44.v),
                                SizedBox(height: 11.v),
                                //
                                SizedBox(height: 15.v),
                                Align(
                                    alignment: Alignment.center,
                                    child: Text("lbl_or".tr,
                                        style:
                                            CustomTextStyles.bodyLargeInter)),
                                SizedBox(height: 1.v),
                                CustomImageView(
                                    imagePath: ImageConstant.imgVector1,
                                    height: 1.v,
                                    width: 31.h,
                                    alignment: Alignment.center),
                                SizedBox(height: 19.v),
                                Align(
                                  alignment: Alignment.center,
                                  child: Row(
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
                                            decoration: IconButtonStyleHelper
                                                .fillGrayTL10,
                                            child: Image.network(
                                                'http://pngimg.com/uploads/google/google_PNG19635.png',
                                                fit: BoxFit.cover)),
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
                                ),
                                SizedBox(height: 48.v),
                                _buildLoginButton(),
                                SizedBox(height: 14.v),
                                _buildRegisterText(context)
                              ])),
                    )))));
  }

  /// Section Widget
  Widget _buildEmail() {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: CustomTextFormField(
            controller: controller.emailController,
            hintText: "lbl_enter_email".tr,
            hintStyle: CustomTextStyles.bodyMediumInterGray500,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
            contentPadding:
                EdgeInsets.symmetric(horizontal: 23.h, vertical: 16.v)));
  }

  /// Section Widget
  Widget _buildPassword() {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: CustomTextFormField(
            controller: controller.passwordController,
            hintText: "lbl_enter_password".tr,
            hintStyle: CustomTextStyles.bodyMediumInterGray500,
            textInputType: TextInputType.visiblePassword,
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: true,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 23.h, vertical: 16.v)));
  }

  /// Section Widget
  Widget _buildLoginButton() {
    return CustomElevatedButton(
        height: 57.v,
        text: "lbl_login".tr,
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientYellowToPrimaryDecoration,
        buttonTextStyle: CustomTextStyles.titleMediumRobotoOnPrimaryContainer);
  }

  /// Section Widget
  Widget _buildRegisterText(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 89.h, vertical: 15.v),
      decoration: AppDecoration.outlineDeepOrange
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder18),
      child: TextButton(
        onPressed: () {
            Navigator.pushNamed(context, AppRoutes.registerScreen);},
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder18,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 3.v),
            Center(
              child: Text(
                "msg_create_an_account".tr,
                style: CustomTextStyles.titleMediumInterRedA200,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapBtnArrowLeft() {
    Get.back();
  }
}
