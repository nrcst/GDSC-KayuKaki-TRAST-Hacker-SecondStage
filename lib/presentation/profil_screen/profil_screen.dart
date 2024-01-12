import 'controller/profil_controller.dart';
import 'package:flutter/material.dart';
import 'package:trast/core/app_export.dart';
import 'package:trast/core/utils/validation_functions.dart';
import 'package:trast/widgets/app_bar/appbar_leading_image.dart';
import 'package:trast/widgets/app_bar/appbar_title.dart';
import 'package:trast/widgets/app_bar/custom_app_bar.dart';
import 'package:trast/widgets/custom_drop_down.dart';
import 'package:trast/widgets/custom_elevated_button.dart';
import 'package:trast/widgets/custom_icon_button.dart';
import 'package:trast/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfilScreen extends GetWidget<ProfilController> {
  ProfilScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.gray10002,
            appBar: _buildAppBar(),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 4.v),
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 41.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                      height: 175.v,
                                      width: 171.h,
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    height: 175.v,
                                                    width: 171.h,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(87.h),
                                                        border: Border.all(
                                                            color: appTheme
                                                                .yellow900,
                                                            width: 1.h)))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                    height: 170.v,
                                                    width: 165.h,
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgEllipse2,
                                                              height: 170.v,
                                                              width: 165.h,
                                                              radius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          85.h),
                                                              alignment:
                                                                  Alignment
                                                                      .center),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      right:
                                                                          18.h),
                                                              child: CustomIconButton(
                                                                  height: 24.v,
                                                                  width: 26.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomRight,
                                                                  child:
                                                                      CustomImageView()))
                                                        ])))
                                          ]))),
                              SizedBox(height: 41.v),
                              Text("lbl_name".tr,
                                  style: CustomTextStyles
                                      .titleMediumInterErrorContainer),
                              SizedBox(height: 8.v),
                              _buildName(),
                              SizedBox(height: 13.v),
                              Text("lbl_email".tr,
                                  style: CustomTextStyles
                                      .titleMediumInterErrorContainer),
                              SizedBox(height: 8.v),
                              _buildEmail(),
                              SizedBox(height: 17.v),
                              Text("lbl_password".tr,
                                  style: CustomTextStyles
                                      .titleMediumInterErrorContainer),
                              SizedBox(height: 7.v),
                              _buildPassword(),
                              SizedBox(height: 17.v),
                              Text("lbl_phone_number".tr,
                                  style: CustomTextStyles
                                      .titleMediumInterErrorContainer),
                              SizedBox(height: 7.v),
                              _buildPhoneNumber(),
                              SizedBox(height: 16.v),
                              Text("lbl_birth_date".tr,
                                  style: CustomTextStyles
                                      .titleMediumInterErrorContainer),
                              SizedBox(height: 8.v),
                              CustomDropDown(
                                  icon: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 6.v, 16.h, 13.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgCheckmark,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize)),
                                  hintText: "lbl_23_05_1995".tr,
                                  items: controller.profilModelObj.value
                                      .dropdownItemList!.value,
                                  onChanged: (value) {
                                    controller.onSelected(value);
                                  }),
                              SizedBox(height: 39.v),
                              _buildSaveChanges(),
                              SizedBox(height: 34.v),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("lbl_updatet".tr,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .bodyLargeInterGray10001))
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftErrorcontainer,
            margin: EdgeInsets.only(left: 32.h, top: 13.v, bottom: 18.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_my_profile".tr));
  }

  /// Section Widget
  Widget _buildName() {
    return CustomTextFormField(
        controller: controller.nameController,
        hintText: "lbl_kayu_kaki".tr,
        hintStyle: CustomTextStyles.titleSmallInterGray800);
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
        controller: controller.emailController,
        hintText: "msg_kayukaki_gmail_com".tr,
        hintStyle: CustomTextStyles.titleSmallInterGray800,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildPassword() {
    return CustomTextFormField(
        controller: controller.passwordController,
        hintText: "lbl4".tr,
        textInputType: TextInputType.visiblePassword,
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true);
  }

  /// Section Widget
  Widget _buildPhoneNumber() {
    return CustomTextFormField(
        controller: controller.phoneNumberController,
        hintText: "lbl_62888888898".tr,
        hintStyle: CustomTextStyles.titleSmallInterGray800,
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildSaveChanges() {
    return CustomElevatedButton(
        height: 49.v,
        width: 133.h,
        text: "lbl_save_changes".tr,
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientYellowToPrimaryDecoration,
        alignment: Alignment.center);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
