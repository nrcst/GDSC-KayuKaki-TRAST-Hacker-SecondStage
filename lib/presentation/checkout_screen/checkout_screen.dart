import '../checkout_screen/widgets/cardlist_item_widget.dart';
import 'controller/checkout_controller.dart';
import 'models/cardlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trast/core/app_export.dart';
import 'package:trast/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:trast/widgets/app_bar/appbar_subtitle.dart';
import 'package:trast/widgets/app_bar/appbar_title_dropdown_one.dart';
import 'package:trast/widgets/app_bar/custom_app_bar.dart';
import 'package:trast/widgets/custom_elevated_button.dart';
import 'package:trast/widgets/custom_radio_button.dart';

class CheckoutScreen extends GetWidget<CheckoutController> {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: appTheme.gray50,
            appBar: _buildAppBar(),
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                padding: EdgeInsets.only(top: 56.v, bottom: 51.v),
                decoration: BoxDecoration(
                    color: appTheme.gray50,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgSplash),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 35.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 5.h),
                              child: Text("lbl_payment".tr,
                                  style: theme.textTheme.headlineSmall)),
                          SizedBox(height: 30.v),
                          Padding(
                              padding: EdgeInsets.only(left: 17.h),
                              child: Text("lbl_payment_method".tr,
                                  style: CustomTextStyles.bodyLargeThin)),
                          SizedBox(height: 18.v),
                          _buildCardList(),
                          SizedBox(height: 8.v),
                          Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Text("msg_delivery_method".tr,
                                  style: CustomTextStyles.bodyLargeThin)),
                          SizedBox(height: 18.v),
                          _buildDeliveryMethod(),
                          SizedBox(height: 19.v),
                          _buildTotal(),
                          SizedBox(height: 5.v)
                        ]))),
            bottomNavigationBar: _buildOrder()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 61.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 21.h, top: 7.v, bottom: 9.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: Column(children: [
          Obx(() => AppbarTitleDropdownOne(
              margin: EdgeInsets.only(left: 23.h, right: 6.h),
              hintText: "lbl_delivery_to".tr,
              items: controller.checkoutModelObj.value.dropdownItemList!.value,
              onTap: (value) {
                controller.onSelected(value);
              })),
          SizedBox(height: 5.v),
          AppbarSubtitle(text: "msg_jl_kayukaki_no".tr)
        ]));
  }

  /// Section Widget
  Widget _buildCardList() {
    return Align(
        alignment: Alignment.center,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 14.h),
            padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 8.v),
            decoration: AppDecoration.outlineErrorContainer
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder18),
            child: Obx(() => ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return Opacity(
                      opacity: 0.3,
                      child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 9.5.v),
                          child: SizedBox(
                              width: 232.h,
                              child: Divider(
                                  height: 1.v,
                                  thickness: 1.v,
                                  color: theme.colorScheme.errorContainer))));
                },
                itemCount: controller
                    .checkoutModelObj.value.cardlistItemList.value.length,
                itemBuilder: (context, index) {
                  CardlistItemModel model = controller
                      .checkoutModelObj.value.cardlistItemList.value[index];
                  return CardlistItemWidget(model);
                }))));
  }

  /// Section Widget
  Widget _buildDeliveryMethod() {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.h),
            child: Obx(() => Column(children: [
                  Padding(
                      padding:
                          EdgeInsets.only(left: 21.h, top: 31.v, right: 32.h),
                      child: CustomRadioButton(
                          text: "lbl_door_delivery".tr,
                          value: controller
                              .checkoutModelObj.value.radioList.value[0],
                          groupValue: controller.deliveryMethod.value,
                          padding: EdgeInsets.fromLTRB(16.h, 1.v, 30.h, 1.v),
                          onChange: (value) {
                            controller.deliveryMethod.value = value;
                          })),
                  Padding(
                      padding: EdgeInsets.fromLTRB(21.h, 25.v, 207.h, 34.v),
                      child: CustomRadioButton(
                          text: "lbl_pick_up".tr,
                          value: controller
                              .checkoutModelObj.value.radioList.value[1],
                          groupValue: controller.deliveryMethod.value,
                          onChange: (value) {
                            controller.deliveryMethod.value = value;
                          }))
                ]))));
  }

  /// Section Widget
  Widget _buildTotal() {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 28.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 2.v, bottom: 12.v),
                      child: Text("lbl_total".tr,
                          style: CustomTextStyles.bodyMediumGray80001)),
                  Text("lbl_rp45_000".tr, style: theme.textTheme.headlineSmall)
                ])));
  }

  /// Section Widget
  Widget _buildOrder() {
    return CustomElevatedButton(
        text: "lbl_order".tr,
        margin: EdgeInsets.only(left: 24.h, right: 16.h, bottom: 31.v),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientYellowToPrimaryDecoration,
        buttonTextStyle: CustomTextStyles.titleMediumRobotoOnPrimaryContainer);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
