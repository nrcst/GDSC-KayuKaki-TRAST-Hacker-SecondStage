import 'controller/item_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:trast/core/app_export.dart';
import 'package:trast/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:trast/widgets/app_bar/custom_app_bar.dart';
import 'package:trast/widgets/custom_elevated_button.dart';

class ItemDetailScreen extends GetWidget<ItemDetailController> {
  const ItemDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          height: 224.v,
                          width: 258.h,
                          margin: EdgeInsets.only(top: 87.v),
                          padding: EdgeInsets.symmetric(
                              horizontal: 14.h, vertical: 37.v),
                          decoration: AppDecoration.outlineOnPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder18),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgRectangle18112x170,
                              height: 150.v,
                              width: 229.h,
                              radius: BorderRadius.circular(20.h),
                              alignment: Alignment.center))),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: EdgeInsets.symmetric(vertical: 34.v),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgSplash),
                                  fit: BoxFit.cover)),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            _buildAppBar(),
                            Spacer(flex: 70),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 18.h, vertical: 15.v),
                                decoration: AppDecoration
                                    .gradientYellowToPrimary
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder23),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 1.v),
                                          child: Text("lbl2".tr,
                                              style:
                                                  theme.textTheme.titleSmall)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 21.h),
                                          child: Text("lbl_2".tr,
                                              style:
                                                  theme.textTheme.titleSmall)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 20.h, top: 1.v),
                                          child: Text("lbl3".tr,
                                              style:
                                                  theme.textTheme.titleSmall))
                                    ])),
                            SizedBox(height: 27.v),
                            Text("lbl_sate_ayam".tr,
                                style: theme.textTheme.headlineSmall),
                            SizedBox(height: 7.v),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 75.h, right: 83.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                          width: 32.h,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgStar16,
                                                    height: 15.adaptSize,
                                                    width: 15.adaptSize),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 1.v),
                                                    child: Text("lbl_4".tr,
                                                        style: CustomTextStyles
                                                            .bodySmallGray8000111))
                                              ])),
                                      Spacer(flex: 61),
                                      Padding(
                                          padding: EdgeInsets.only(bottom: 2.v),
                                          child: Text("lbl_tersedia".tr,
                                              style: CustomTextStyles
                                                  .bodySmallGray8000111)),
                                      Spacer(flex: 38),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgClose,
                                          height: 16.v,
                                          width: 12.h),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 5.h, bottom: 2.v),
                                          child: Text("lbl_5_10min".tr,
                                              style: CustomTextStyles
                                                  .bodySmallGray8000111))
                                    ])),
                            SizedBox(height: 32.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    height: 82.v,
                                    width: 295.h,
                                    margin: EdgeInsets.only(left: 34.h),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Text("lbl_more".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumRedA200)),
                                          Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                  width: 295.h,
                                                  child: Text(
                                                      "msg_sate_ayam_madura".tr,
                                                      maxLines: 4,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: CustomTextStyles
                                                          .bodyMediumGray80001
                                                          .copyWith(
                                                              height: 1.50))))
                                        ]))),
                            Spacer(flex: 29),
                            SizedBox(height: 39.v),
                            CustomElevatedButton(
                                text: "lbl_add_to_cart".tr,
                                margin: EdgeInsets.symmetric(horizontal: 20.h),
                                buttonStyle: CustomButtonStyles.none,
                                decoration: CustomButtonStyles
                                    .gradientYellowToPrimaryDecoration)
                          ])))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 40.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 21.h, right: 314.h),
            onTap: () {
              onTapArrowLeft();
            }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
