import 'controller/donate_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:trast/core/app_export.dart';
import 'package:trast/presentation/dashboard_page/dashboard_page.dart';
import 'package:trast/presentation/donate_page/donate_page.dart';
import 'package:trast/presentation/notification_page/notification_page.dart';
import 'package:trast/widgets/custom_bottom_bar.dart';
import 'package:trast/widgets/custom_drop_down.dart';
import 'package:trast/widgets/custom_elevated_button.dart';
import 'package:trast/widgets/custom_icon_button.dart';
import 'package:trast/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class DonateOneScreen extends GetWidget<DonateOneController> {
  const DonateOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          padding: EdgeInsets.only(bottom: 115.v),
          decoration: BoxDecoration(
            color: appTheme.gray5001,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgSplash,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 17.h,
              vertical: 33.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.v),
                        child: CustomIconButton(
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          padding: EdgeInsets.all(11.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgMegaphone,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 72.h),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 6.h),
                              child: CustomDropDown(
                                width: 91.h,
                                hintText: "lbl_pick_up_from".tr,
                                alignment: Alignment.centerRight,
                                items: controller.donateOneModelObj.value
                                    .dropdownItemList!.value,
                                onChanged: (value) {
                                  controller.onSelected(value);
                                },
                              ),
                            ),
                            SizedBox(height: 5.v),
                            Text(
                              "msg_jl_kayukaki_no".tr,
                              style: CustomTextStyles.bodyMediumDMSansRedA200,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12.v),
                Container(
                  margin: EdgeInsets.only(left: 4.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 11.h,
                    vertical: 8.v,
                  ),
                  decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_donation".tr,
                        style: theme.textTheme.headlineSmall,
                      ),
                      SizedBox(height: 31.v),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 18.h,
                            right: 21.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 1.v),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 110.adaptSize,
                                      width: 110.adaptSize,
                                      padding: EdgeInsets.all(34.h),
                                      decoration:
                                          AppDecoration.fillYellow.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder12,
                                      ),
                                      child: CustomImageView(
                                        imagePath: ImageConstant
                                            .imgShoppingCartOnprimarycontainer,
                                        height: 41.adaptSize,
                                        width: 41.adaptSize,
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                    SizedBox(height: 9.v),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 23.h),
                                        child: Text(
                                          "lbl_raw_food".tr,
                                          style: theme.textTheme.labelLarge,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 110.adaptSize,
                                    width: 110.adaptSize,
                                    padding: EdgeInsets.all(33.h),
                                    decoration:
                                        AppDecoration.fillGray100.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder12,
                                    ),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgHotPot1,
                                      height: 42.adaptSize,
                                      width: 42.adaptSize,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                  SizedBox(height: 10.v),
                                  Text(
                                    "lbl_prepared_food".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 25.v),
                      Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Text(
                          "lbl_food_s_detail".tr,
                          style:
                              CustomTextStyles.titleMediumInterErrorContainer,
                        ),
                      ),
                      SizedBox(height: 7.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 3.h,
                          right: 21.h,
                        ),
                        child: CustomTextFormField(
                          controller: controller.appleController,
                          hintText: "lbl_apple".tr,
                          hintStyle: CustomTextStyles.titleSmallInterGray800,
                        ),
                      ),
                      SizedBox(height: 17.v),
                      Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Text(
                          "lbl_pick_up_day".tr,
                          style:
                              CustomTextStyles.titleMediumInterErrorContainer,
                        ),
                      ),
                      SizedBox(height: 6.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 3.h,
                          right: 21.h,
                        ),
                        child: CustomDropDown(
                          icon: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 8.v, 17.h, 12.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgCheckmark,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                            ),
                          ),
                          hintText: "lbl_20_01_2024".tr,
                          items: controller
                              .donateOneModelObj.value.dropdownItemList1!.value,
                          onChanged: (value) {
                            controller.onSelected1(value);
                          },
                        ),
                      ),
                      SizedBox(height: 11.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 3.h,
                          right: 21.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildPrice(),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 9.v,
                                bottom: 5.v,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "lbl_quantity".tr,
                                    style: CustomTextStyles
                                        .titleMediumInterErrorContainer,
                                  ),
                                  SizedBox(height: 10.v),
                                  SizedBox(
                                    width: 70.h,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 24.adaptSize,
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 7.h,
                                            vertical: 1.v,
                                          ),
                                          decoration: AppDecoration
                                              .gradientYellowToPrimary
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder12,
                                          ),
                                          child: Text(
                                            "lbl2".tr,
                                            style: CustomTextStyles
                                                .titleMediumOnPrimaryContainer,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 2.v),
                                          child: Text(
                                            "lbl_1".tr,
                                            style: theme.textTheme.titleMedium,
                                          ),
                                        ),
                                        Container(
                                          width: 24.adaptSize,
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 6.h,
                                            vertical: 1.v,
                                          ),
                                          decoration: AppDecoration
                                              .gradientYellowToPrimary
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder12,
                                          ),
                                          child: Text(
                                            "lbl3".tr,
                                            style: CustomTextStyles
                                                .titleMediumOnPrimaryContainer,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 11.v),
                    ],
                  ),
                ),
                SizedBox(height: 40.v),
                CustomElevatedButton(
                  text: "lbl_donate".tr,
                  margin: EdgeInsets.symmetric(horizontal: 3.h),
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles.gradientYellowToPrimaryDecoration,
                ),
                SizedBox(height: 4.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildPrice() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_price_request".tr,
          style: CustomTextStyles.titleMediumInterErrorContainer,
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          width: 119.h,
          controller: controller.priceController,
          hintText: "lbl_rp10_000".tr,
          hintStyle: CustomTextStyles.titleSmallInterGray800,
          textInputAction: TextInputAction.done,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.dashboardPage;
      case BottomBarEnum.Favorite:
        return AppRoutes.donatePage;
      case BottomBarEnum.Notification:
        return "/";
      case BottomBarEnum.Cart:
        return AppRoutes.notificationPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.dashboardPage:
        return DashboardPage();
      case AppRoutes.donatePage:
        return DonatePage();
      case AppRoutes.notificationPage:
        return NotificationPage();
      default:
        return DefaultWidget();
    }
  }
}
