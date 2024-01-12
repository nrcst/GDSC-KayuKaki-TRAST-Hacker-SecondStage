import 'controller/sidebar_controller.dart';
import 'package:flutter/material.dart';
import 'package:trast/core/app_export.dart';
import 'package:trast/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:trast/widgets/app_bar/appbar_trailing_image.dart';
import 'package:trast/widgets/app_bar/custom_app_bar.dart';
import 'package:trast/widgets/custom_elevated_button.dart';

class SidebarScreen extends GetWidget<SidebarController> {
  const SidebarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 23.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgGroup462,
                          height: 66.adaptSize,
                          width: 66.adaptSize,
                          margin: EdgeInsets.only(left: 12.h)),
                      SizedBox(height: 25.v),
                      Text("lbl_kayu_kaki".tr,
                          style: CustomTextStyles.titleMediumErrorContainer),
                      SizedBox(height: 1.v),
                      Text("msg_kayukaki_gmail_com".tr,
                          style: theme.textTheme.bodyMedium),
                      SizedBox(height: 43.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgLock,
                                height: 24.adaptSize,
                                width: 24.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 10.h, top: 5.v),
                                child: Text("lbl_my_profile".tr,
                                    style: theme.textTheme.bodyMedium))
                          ])),
                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgBag,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 10.h, top: 7.v),
                                    child: Text("lbl_payment_method".tr,
                                        style: theme.textTheme.bodyMedium))
                              ])),
                      SizedBox(height: 39.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgSearch,
                                height: 24.adaptSize,
                                width: 24.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 10.h, top: 4.v, bottom: 2.v),
                                child: Text("lbl_settings".tr,
                                    style: theme.textTheme.bodyMedium))
                          ])),
                      SizedBox(height: 40.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgUserGray900,
                                height: 24.adaptSize,
                                width: 24.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 10.h, top: 4.v, bottom: 2.v),
                                child: Text("lbl_help".tr,
                                    style: theme.textTheme.bodyMedium))
                          ])),
                      SizedBox(height: 40.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgFile,
                                height: 24.adaptSize,
                                width: 24.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h, top: 5.v),
                                child: Text("lbl_history".tr,
                                    style: theme.textTheme.bodyMedium))
                          ])),
                      Spacer(),
                      SizedBox(height: 80.v),
                      CustomElevatedButton(
                          height: 49.v,
                          width: 101.h,
                          text: "lbl_log_out".tr,
                          buttonStyle: CustomButtonStyles.none,
                          decoration: CustomButtonStyles
                              .gradientYellowToPrimaryDecoration)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 61.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgCloseErrorcontainer,
            margin: EdgeInsets.only(left: 21.h, top: 4.v, bottom: 11.v),
            onTap: () {
              onTapClose();
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgArtboard44x2,
              margin: EdgeInsets.fromLTRB(27.h, 4.v, 27.h, 5.v))
        ]);
  }

  /// Navigates to the previous screen.
  onTapClose() {
    Get.back();
  }
}
