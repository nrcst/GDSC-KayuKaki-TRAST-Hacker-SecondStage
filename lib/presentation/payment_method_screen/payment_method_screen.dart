import '../payment_method_screen/widgets/paymentmethod_item_widget.dart';
import 'controller/payment_method_controller.dart';
import 'models/paymentmethod_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trast/core/app_export.dart';
import 'package:trast/widgets/app_bar/appbar_leading_image.dart';
import 'package:trast/widgets/app_bar/appbar_title.dart';
import 'package:trast/widgets/app_bar/custom_app_bar.dart';
import 'package:trast/widgets/custom_elevated_button.dart';

class PaymentMethodScreen extends GetWidget<PaymentMethodController> {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray10002,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 27.v),
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 22.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 11.h),
                                  child: Text("msg_card_m_banking".tr,
                                      style: CustomTextStyles.bodyLargeThin)),
                              SizedBox(height: 18.v),
                              _buildCardHolder(),
                              SizedBox(height: 32.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 11.h),
                                  child: Text("lbl_e_wallet2".tr,
                                      style: CustomTextStyles.bodyLargeThin)),
                              SizedBox(height: 8.v),
                              _buildPaymentMethod(),
                              SizedBox(height: 69.v),
                              CustomElevatedButton(
                                  height: 49.v,
                                  width: 133.h,
                                  text: "lbl_save_changes".tr,
                                  buttonStyle: CustomButtonStyles.none,
                                  decoration: CustomButtonStyles
                                      .gradientYellowToPrimaryDecoration,
                                  alignment: Alignment.center),
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
            margin: EdgeInsets.only(left: 32.h, top: 14.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_payment_method2".tr));
  }

  /// Section Widget
  Widget _buildCardHolder() {
    return Container(
        width: 315.h,
        margin: EdgeInsets.symmetric(horizontal: 8.h),
        padding: EdgeInsets.all(6.h),
        decoration: AppDecoration.outlineErrorContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder18),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          CustomElevatedButton(
              height: 35.v,
              width: 73.h,
              text: "lbl_change".tr,
              buttonStyle: CustomButtonStyles.none,
              decoration: CustomButtonStyles.gradientYellowToPrimaryDecoration,
              alignment: Alignment.centerRight),
          SizedBox(height: 11.v),
          Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder7),
              child: Container(
                  height: 174.v,
                  width: 295.h,
                  decoration: AppDecoration.gradientDeepPurpleToDeepPurple
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder7),
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgVector,
                        height: 80.v,
                        width: 295.h,
                        alignment: Alignment.bottomCenter),
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.h),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      height: 12.v,
                                      width: 40.h,
                                      child: Stack(
                                          alignment: Alignment.centerLeft,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgGroup,
                                                height: 11.v,
                                                width: 5.h,
                                                alignment: Alignment.centerLeft,
                                                margin: EdgeInsets.only(
                                                    left: 13.h)),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgGroupOnprimarycontainer,
                                                height: 11.adaptSize,
                                                width: 11.adaptSize,
                                                alignment: Alignment.centerLeft,
                                                margin:
                                                    EdgeInsets.only(left: 3.h)),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgGroupOnprimarycontainer6x7,
                                                height: 6.v,
                                                width: 7.h,
                                                alignment: Alignment.topLeft),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgGroupOnprimarycontainer12x9,
                                                height: 12.v,
                                                width: 9.h,
                                                alignment:
                                                    Alignment.centerRight,
                                                margin: EdgeInsets.only(
                                                    right: 10.h)),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgGroupOnprimarycontainer11x11,
                                                height: 11.adaptSize,
                                                width: 11.adaptSize,
                                                alignment:
                                                    Alignment.centerRight)
                                          ])),
                                  SizedBox(height: 37.v),
                                  Padding(
                                      padding: EdgeInsets.only(right: 9.h),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgSettingsOnprimarycontainer,
                                                height: 9.v,
                                                width: 51.h,
                                                margin: EdgeInsets.only(
                                                    top: 5.v, bottom: 7.v)),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgSettingsOnprimarycontainer,
                                                height: 9.v,
                                                width: 51.h,
                                                margin: EdgeInsets.only(
                                                    top: 5.v, bottom: 7.v)),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgSettingsOnprimarycontainer,
                                                height: 9.v,
                                                width: 51.h,
                                                margin: EdgeInsets.only(
                                                    top: 5.v, bottom: 7.v)),
                                            Text("lbl_8014".tr,
                                                style: CustomTextStyles
                                                    .bodyLargeOpenSansOnPrimaryContainer16)
                                          ])),
                                  SizedBox(height: 28.v),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Opacity(
                                                  opacity: 0.8,
                                                  child: Text(
                                                      "lbl_card_holder"
                                                          .tr
                                                          .toUpperCase(),
                                                      style: CustomTextStyles
                                                          .bodySmallOpenSansOnPrimaryContainer)),
                                              SizedBox(height: 3.v),
                                              Text("lbl_kayu_kaki2".tr,
                                                  style: CustomTextStyles
                                                      .bodyLargeOpenSansOnPrimaryContainer)
                                            ]),
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Opacity(
                                                      opacity: 0.8,
                                                      child: Text(
                                                          "lbl_expires"
                                                              .tr
                                                              .toUpperCase(),
                                                          style: CustomTextStyles
                                                              .bodySmallOpenSansOnPrimaryContainer))),
                                              SizedBox(height: 3.v),
                                              Text("lbl_08_21".tr,
                                                  style: CustomTextStyles
                                                      .bodyLargeOpenSansOnPrimaryContainer)
                                            ])
                                      ])
                                ])))
                  ]))),
          SizedBox(height: 8.v)
        ]));
  }

  /// Section Widget
  Widget _buildPaymentMethod() {
    return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Opacity(
                  opacity: 0.3,
                  child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 0.5.v),
                      child: SizedBox(
                          width: 232.h,
                          child: Divider(
                              height: 1.v,
                              thickness: 1.v,
                              color: theme.colorScheme.errorContainer))));
            },
            itemCount: controller
                .paymentMethodModelObj.value.paymentmethodItemList.value.length,
            itemBuilder: (context, index) {
              PaymentmethodItemModel model = controller.paymentMethodModelObj
                  .value.paymentmethodItemList.value[index];
              return PaymentmethodItemWidget(model);
            })));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
