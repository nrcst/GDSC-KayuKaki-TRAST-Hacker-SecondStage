import '../dashboard_page/widgets/foodappcard_item_widget.dart';
import 'controller/dashboard_controller.dart';
import 'models/dashboard_model.dart';
import 'models/foodappcard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trast/core/app_export.dart';
import 'package:trast/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:trast/widgets/app_bar/appbar_subtitle.dart';
import 'package:trast/widgets/app_bar/appbar_title_dropdown.dart';
import 'package:trast/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:trast/widgets/app_bar/custom_app_bar.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({Key? key})
      : super(
          key: key,
        );

  DashboardController controller =
      Get.put(DashboardController(DashboardModel().obs));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SafeArea(
        child: Container(
          height: 613.v,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 13.v),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 24.h,
                    right: 136.h,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup47,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: SizedBox(
                    width: 214.h,
                    child: Text(
                      "msg_enjoy_delicious".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                ),
              ),
              _buildHorizontalScroll(),
              _buildNearby(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 61.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 21.h,
          top: 6.v,
          bottom: 9.v,
        ),
      ),
      centerTitle: true,
      title: Column(
        children: [
          Obx(
                () => Container(
              margin: EdgeInsets.only(left: 12.h, right: 6.h, top: 10.h),
              width: 200.0, // Adjust the width as needed
              child: AppbarTitleDropdown(
                hintText: "lbl_delivery_to".tr,
                items: controller.dashboardModelObj.value.dropdownItemList!.value,
                onTap: (value) {
                  controller.onSelected(value);
                },
              ),
            ),
          ),
          SizedBox(height: 4.v),
          AppbarSubtitle(
            margin: EdgeInsets.only(bottom: 30),
            text: "msg_jl_kayukaki_no".tr,
          ),
        ],
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgGroup462,
          margin: EdgeInsets.fromLTRB(20.h, 6.v, 20.h, 9.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildHorizontalScroll() {
    return Align(
      alignment: Alignment.topRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(
          left: 21.h,
          top: 100.v,
          bottom: 377.v,
        ),
        child: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Opacity(
                opacity: 0.5,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.h,
                    vertical: 10.v,
                  ),
                  decoration: AppDecoration.outlineDeeporange10087.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder40,
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 18.h,
                      vertical: 14.v,
                    ),
                    decoration: AppDecoration.fillDeepOrange.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder30,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5.v),
                        Container(
                          decoration: AppDecoration.outlineGray,
                          child: Text(
                            "lbl".tr,
                            style: CustomTextStyles.headlineSmallErrorContainer,
                          ),
                        ),
                        SizedBox(height: 10.v),
                        Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text(
                            "lbl_roti".tr,
                            style:
                                CustomTextStyles.bodySmallDMSansErrorContainer,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 21.h),
                child: _buildRecentOrders(
                  closeImage: ImageConstant.imgClose,
                  username: "lbl_ayam".tr,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 22.h),
                child: _buildRecentOrders(
                  closeImage: ImageConstant.imgClose,
                  username: "lbl_nasi".tr,
                ),
              ),
              Opacity(
                opacity: 0.5,
                child: Container(
                  margin: EdgeInsets.only(left: 22.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.h,
                    vertical: 10.v,
                  ),
                  decoration: AppDecoration.outlineLime.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder40,
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5.h,
                      vertical: 14.v,
                    ),
                    decoration: AppDecoration.fillLime.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder30,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgClose,
                          height: 31.v,
                          width: 9.h,
                          margin: EdgeInsets.only(left: 13.h),
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "lbl_minuman".tr,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodySmallDMSansErrorContainer,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNearby() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: EdgeInsets.only(
          left: 24.h,
          bottom: 6.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lbl_nearby".tr,
                    style: CustomTextStyles.titleMediumBold,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: Text(
                      "lbl_view_all_29".tr,
                      style: CustomTextStyles.bodyMediumInterRedA200.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 38.v),
            SizedBox(
              height: 260.v,
              child: Obx(
                () => ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 1.h,
                    );
                  },
                  itemCount: controller
                      .dashboardModelObj.value.foodappcardItemList.value.length,
                  itemBuilder: (context, index) {
                    FoodappcardItemModel model = controller.dashboardModelObj
                        .value.foodappcardItemList.value[index];
                    return FoodappcardItemWidget(
                      model,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildRecentOrders({
    required String closeImage,
    required String username,
  }) {
    return Opacity(
      opacity: 0.5,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 6.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.outlineBlue.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder40,
        ),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 14.v,
          ),
          decoration: AppDecoration.fillBlue.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder30,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5.v),
              CustomImageView(
                imagePath: closeImage,
                height: 32.v,
                width: 26.h,
              ),
              SizedBox(height: 4.v),
              Align(
                alignment: Alignment.center,
                child: Text(
                  username,
                  style:
                      CustomTextStyles.bodySmallDMSansErrorContainer.copyWith(
                    color: theme.colorScheme.errorContainer.withOpacity(1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
