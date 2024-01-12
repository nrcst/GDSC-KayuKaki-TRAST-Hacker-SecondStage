import '../cart_screen/widgets/cartappcard_item_widget.dart';
import 'controller/cart_controller.dart';
import 'models/cartappcard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trast/core/app_export.dart';
import 'package:trast/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:trast/widgets/app_bar/appbar_subtitle.dart';
import 'package:trast/widgets/app_bar/appbar_title_dropdown_one.dart';
import 'package:trast/widgets/app_bar/custom_app_bar.dart';
import 'package:trast/widgets/custom_elevated_button.dart';
import 'package:trast/widgets/custom_icon_button.dart';

class CartScreen extends GetWidget<CartController> {
  const CartScreen({Key? key}) : super(key: key);

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
                    padding: EdgeInsets.symmetric(vertical: 32.v),
                    child: Column(children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 21.h),
                              child: Text("lbl_your_cart".tr,
                                  style: theme.textTheme.headlineSmall))),
                      SizedBox(height: 14.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgIwwaSwipe,
                                height: 20.adaptSize,
                                width: 20.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 5.h, top: 4.v, bottom: 3.v),
                                child: Text("msg_swipe_on_an_item".tr,
                                    style: CustomTextStyles
                                        .bodySmallErrorContainer))
                          ]),
                      SizedBox(height: 18.v),
                      _buildCartAppCard(),
                      SizedBox(height: 20.v),
                      _buildHorizontalScroll(),
                      SizedBox(height: 70.v),
                      _buildTotal(),
                      SizedBox(height: 5.v)
                    ]))),
            bottomNavigationBar: _buildProceedToPayment()));
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
              items: controller.cartModelObj.value.dropdownItemList!.value,
              onTap: (value) {
                controller.onSelected(value);
              })),
          SizedBox(height: 5.v),
          AppbarSubtitle(text: "msg_jl_kayukaki_no".tr)
        ]));
  }

  /// Section Widget
  Widget _buildCartAppCard() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 20.v);
            },
            itemCount:
                controller.cartModelObj.value.cartappcardItemList.value.length,
            itemBuilder: (context, index) {
              CartappcardItemModel model = controller
                  .cartModelObj.value.cartappcardItemList.value[index];
              return CartappcardItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildHorizontalScroll() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child: Row(children: [
          Container(
              height: 68.v,
              width: 78.h,
              margin: EdgeInsets.symmetric(vertical: 22.v),
              padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 8.v),
              decoration: AppDecoration.outlineOnPrimary
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder18),
              child: CustomImageView(
                  imagePath: ImageConstant.imgRectangle19,
                  height: 45.v,
                  width: 69.h,
                  radius: BorderRadius.circular(20.h),
                  alignment: Alignment.topCenter)),
          Container(
              height: 112.v,
              width: 237.h,
              margin: EdgeInsets.only(left: 8.h),
              child: Stack(alignment: Alignment.centerLeft, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 112.v,
                        width: 237.h,
                        decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimaryContainer
                                .withOpacity(1),
                            borderRadius: BorderRadius.circular(30.h)))),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        width: 210.h,
                        margin: EdgeInsets.fromLTRB(2.h, 25.v, 25.h, 22.v),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Text("lbl_sop_ayam".tr,
                                            style:
                                                theme.textTheme.titleMedium)),
                                    SizedBox(height: 22.v),
                                    Text("lbl_rp15_000".tr,
                                        style:
                                            CustomTextStyles.titleMediumRedA200)
                                  ]),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 18.v, bottom: 21.v),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            width: 24.adaptSize,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 7.h, vertical: 1.v),
                                            decoration: AppDecoration
                                                .gradientYellowToPrimary
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder12),
                                            child: Text("lbl2".tr,
                                                style: CustomTextStyles
                                                    .titleMediumOnPrimaryContainer)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 8.h, top: 2.v),
                                            child: Text("lbl_1".tr,
                                                style: theme
                                                    .textTheme.titleMedium)),
                                        Container(
                                            width: 24.adaptSize,
                                            margin: EdgeInsets.only(left: 8.h),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 6.h, vertical: 1.v),
                                            decoration: AppDecoration
                                                .gradientYellowToPrimary
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder12),
                                            child: Text("lbl3".tr,
                                                style: CustomTextStyles
                                                    .titleMediumOnPrimaryContainer))
                                      ]))
                            ])))
              ])),
          Padding(
              padding: EdgeInsets.only(left: 20.h, top: 35.v, bottom: 37.v),
              child: CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  decoration: IconButtonStyleHelper.fillGreen,
                  child: CustomImageView(imagePath: ImageConstant.imgEdit))),
          Padding(
              padding: EdgeInsets.only(left: 20.h, top: 22.v, bottom: 49.v),
              child: CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  decoration: IconButtonStyleHelper.fillDeepOrange,
                  child: CustomImageView(imagePath: ImageConstant.imgThumbsUp)))
        ])));
  }

  /// Section Widget
  Widget _buildTotal() {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 44.h, right: 16.h),
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
  Widget _buildProceedToPayment() {
    return CustomElevatedButton(
        text: "msg_proceed_to_payment".tr,
        margin: EdgeInsets.only(left: 24.h, right: 16.h, bottom: 31.v),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientYellowToPrimaryDecoration);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
