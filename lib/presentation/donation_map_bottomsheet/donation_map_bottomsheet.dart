import 'controller/donation_map_controller.dart';
import 'package:flutter/material.dart';
import 'package:trast/core/app_export.dart';
import 'package:trast/widgets/custom_elevated_button.dart';
import 'package:trast/widgets/custom_text_form_field.dart';

class DonationMapBottomsheet extends StatelessWidget {
  DonationMapBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  DonationMapController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_pickup_address".tr,
            style: CustomTextStyles.titleMediumRobotoPrimaryContainer,
          ),
          SizedBox(height: 13.v),
          CustomTextFormField(
            controller: controller.pickupAddressvalueController,
            hintText: "msg_jl_kayukaki_no".tr,
            hintStyle: CustomTextStyles.bodyMediumPrimaryContainer,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(6.h, 6.v, 6.h, 4.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgPlace,
                height: 20.v,
                width: 17.h,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 31.v,
            ),
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 4.v, 5.h, 3.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgAddcircle,
                height: 22.v,
                width: 23.h,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 31.v,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 7.v),
            borderDecoration: TextFormFieldStyleHelper.fillGray,
            fillColor: appTheme.gray100,
          ),
          SizedBox(height: 10.v),
          CustomTextFormField(
            controller: controller.pickupInstructionsController,
            hintText: "msg_pickup_instruction".tr,
            textInputAction: TextInputAction.done,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(5.h, 5.v, 4.h, 5.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgAdd,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 30.v,
            ),
            contentPadding: EdgeInsets.only(
              top: 6.v,
              right: 30.h,
              bottom: 6.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.fillGrayTL10,
            fillColor: appTheme.gray200,
          ),
          SizedBox(height: 16.v),
          SizedBox(
            height: 36.v,
            width: 328.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 13.v,
                    width: 101.h,
                    decoration: BoxDecoration(),
                  ),
                ),
                CustomElevatedButton(
                  height: 36.v,
                  width: 328.h,
                  text: "lbl_select".tr,
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles.gradientYellowToPrimaryDecoration,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }
}
