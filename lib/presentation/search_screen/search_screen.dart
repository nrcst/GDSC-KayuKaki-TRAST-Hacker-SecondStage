import 'controller/search_controller.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:trast/core/app_export.dart';
import 'package:trast/widgets/custom_icon_button.dart';
import 'package:trast/widgets/custom_search_view.dart';

class SearchScreen extends GetWidget<SearchController> {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                height: 614.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 29.v),
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  _buildArrowLeftColumn(),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          margin: EdgeInsets.only(left: 5.h, right: 4.h),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgSplash),
                                  fit: BoxFit.cover)),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                _buildTheMacdonaldsRow(),
                                SizedBox(height: 29.v),
                                _buildTheMacdonaldsRow1()
                              ])))
                ])),
            bottomNavigationBar: _buildArrowLeftColumn1()));
  }

  /// Section Widget
  Widget _buildArrowLeftColumn() {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(top: 4.v, right: 4.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomIconButton(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    padding: EdgeInsets.all(13.h),
                    onTap: () {
                      onTapBtnArrowLeft();
                    },
                    child:
                        CustomImageView(imagePath: ImageConstant.imgArrowLeft)),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: CustomSearchView(
                            controller: controller.searchController,
                            hintText: "lbl_type_here".tr)))
              ]),
              SizedBox(height: 26.v),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(right: 67.h),
                      child: Text("lbl_found_18_result".tr,
                          style: theme.textTheme.headlineSmall)))
            ])));
  }

  /// Section Widget
  Widget _buildTheMacdonaldsRow() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 11.v),
          decoration: AppDecoration.outlineGrayC
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle18,
                    height: 84.v,
                    width: 128.h,
                    radius: BorderRadius.circular(20.h)),
                SizedBox(height: 16.v),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        height: 35.v,
                        width: 94.h,
                        margin: EdgeInsets.only(left: 3.h),
                        child:
                            Stack(alignment: Alignment.bottomLeft, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Text("lbl_ayam_goreng".tr,
                                  style: theme.textTheme.titleMedium)),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Text("lbl_rpxxxxx".tr,
                                  style: CustomTextStyles
                                      .bodySmallDMSansGray80001_1))
                        ]))),
                SizedBox(height: 18.v),
                Container(
                    width: 128.h,
                    margin: EdgeInsets.only(left: 6.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildFiftySix(rating: "lbl_4".tr),
                          SizedBox(
                              height: 14.v,
                              width: 58.h,
                              child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text("lbl_tersedia_99".tr,
                                            style: CustomTextStyles
                                                .bodySmallDMSansGray80001)),
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                            height: 13.adaptSize,
                                            width: 13.adaptSize,
                                            margin:
                                                EdgeInsets.only(right: 10.h),
                                            decoration: BoxDecoration()))
                                  ]))
                        ]))
              ])),
      Padding(
          padding: EdgeInsets.only(left: 22.h),
          child: _buildFoodAppCardColumn(
              title: "lbl_sate_ayam".tr,
              password: "lbl_rpxxxxxx".tr,
              rating: "lbl_4".tr,
              availability: "lbl_tersedia_99".tr))
    ]);
  }

  /// Section Widget
  Widget _buildTheMacdonaldsRow1() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 11.v),
          decoration: AppDecoration.outlineGrayC
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle18,
                    height: 84.v,
                    width: 128.h,
                    radius: BorderRadius.circular(20.h),
                    alignment: Alignment.center),
                SizedBox(height: 16.v),
                Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text("lbl_ayam_goreng".tr,
                        style: theme.textTheme.titleMedium)),
                Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text("lbl_rpxxxxx".tr,
                        style: CustomTextStyles.bodySmallDMSansGray80001_1)),
                SizedBox(height: 18.v),
                Container(
                    width: 128.h,
                    margin: EdgeInsets.only(left: 6.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildFiftySix(rating: "lbl_4".tr),
                          SizedBox(
                              height: 14.v,
                              width: 58.h,
                              child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text("lbl_tersedia_99".tr,
                                            style: CustomTextStyles
                                                .bodySmallDMSansGray80001)),
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                            height: 13.adaptSize,
                                            width: 13.adaptSize,
                                            margin:
                                                EdgeInsets.only(right: 10.h),
                                            decoration: BoxDecoration()))
                                  ]))
                        ]))
              ])),
      Container(
          margin: EdgeInsets.only(left: 22.h),
          padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 11.v),
          decoration: AppDecoration.outlineGrayC
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle18112x170,
                    height: 84.v,
                    width: 128.h,
                    radius: BorderRadius.circular(20.h),
                    margin: EdgeInsets.only(left: 3.h)),
                SizedBox(height: 16.v),
                Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text("lbl_sate_ayam".tr,
                        style: theme.textTheme.titleMedium)),
                Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text("lbl_rpxxxxxx".tr,
                        style: CustomTextStyles.bodySmallDMSansGray80001_1)),
                SizedBox(height: 17.v),
                Container(
                    width: 128.h,
                    margin: EdgeInsets.only(left: 6.h),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgStar13,
                              height: 11.adaptSize,
                              width: 11.adaptSize,
                              margin: EdgeInsets.only(bottom: 4.v)),
                          Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text("lbl_4".tr,
                                  style: CustomTextStyles
                                      .bodySmallDMSansGray80001_1)),
                          Spacer(),
                          Padding(
                              padding: EdgeInsets.only(bottom: 2.v),
                              child: Text("lbl_tersedia_99".tr,
                                  style: CustomTextStyles
                                      .bodySmallDMSansGray80001))
                        ]))
              ]))
    ]);
  }

  /// Section Widget
  Widget _buildArrowLeftColumn1() {
    return Padding(
        padding: EdgeInsets.only(left: 37.h, right: 25.h, bottom: 2.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              margin: EdgeInsets.symmetric(vertical: 11.v),
              decoration: AppDecoration.outlineGrayC
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle18,
                        height: 84.v,
                        width: 128.h,
                        radius: BorderRadius.circular(20.h)),
                    Padding(
                        padding: EdgeInsets.only(top: 16.v),
                        child: Text("lbl_ayam_goreng".tr,
                            style: theme.textTheme.titleMedium)),
                    Text("lbl_rpxxxxx".tr,
                        style: CustomTextStyles.bodySmallDMSansGray80001_1),
                    Container(
                        width: 128.h,
                        margin: EdgeInsets.only(left: 3.h, top: 18.v),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _buildFiftySix(rating: "lbl_4".tr),
                              SizedBox(
                                  height: 14.v,
                                  width: 58.h,
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Text("lbl_tersedia_99".tr,
                                                style: CustomTextStyles
                                                    .bodySmallDMSansGray80001)),
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: Container(
                                                height: 13.adaptSize,
                                                width: 13.adaptSize,
                                                margin: EdgeInsets.only(
                                                    right: 10.h),
                                                decoration: BoxDecoration()))
                                      ]))
                            ]))
                  ])),
          Padding(
              padding: EdgeInsets.only(left: 30.h),
              child: _buildFoodAppCardColumn(
                  title: "lbl_sate_ayam".tr,
                  password: "lbl_rpxxxxxx".tr,
                  rating: "lbl_4".tr,
                  availability: "lbl_tersedia_99".tr))
        ]));
  }

  /// Common widget
  Widget _buildFiftySix({required String rating}) {
    return SizedBox(
        width: 28.h,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgStar11,
              height: 11.adaptSize,
              width: 11.adaptSize,
              margin: EdgeInsets.only(bottom: 4.v)),
          Text(rating,
              style: CustomTextStyles.bodySmallDMSansGray80001_1
                  .copyWith(color: appTheme.gray80001))
        ]));
  }

  /// Common widget
  Widget _buildFoodAppCardColumn({
    required String title,
    required String password,
    required String rating,
    required String availability,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 11.v),
        decoration: AppDecoration.outlineGrayC
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle18112x170,
                  height: 84.v,
                  width: 128.h,
                  radius: BorderRadius.circular(20.h),
                  margin: EdgeInsets.only(left: 3.h)),
              Padding(
                  padding: EdgeInsets.only(left: 3.h, top: 16.v),
                  child: Text(title,
                      style: theme.textTheme.titleMedium!
                          .copyWith(color: appTheme.gray80001))),
              Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Text(password,
                      style: CustomTextStyles.bodySmallDMSansGray80001_1
                          .copyWith(color: appTheme.gray80001))),
              Container(
                  width: 128.h,
                  margin: EdgeInsets.only(left: 6.h, top: 17.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 28.h,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgStar15,
                                      height: 11.adaptSize,
                                      width: 11.adaptSize,
                                      margin: EdgeInsets.only(bottom: 4.v)),
                                  Text(rating,
                                      style: CustomTextStyles
                                          .bodySmallDMSansGray80001_1
                                          .copyWith(color: appTheme.gray80001))
                                ])),
                        Padding(
                            padding: EdgeInsets.only(bottom: 2.v),
                            child: Text(availability,
                                style: CustomTextStyles.bodySmallDMSansGray80001
                                    .copyWith(color: appTheme.gray80001)))
                      ]))
            ]));
  }

  /// Navigates to the previous screen.
  onTapBtnArrowLeft() {
    Get.back();
  }
}
