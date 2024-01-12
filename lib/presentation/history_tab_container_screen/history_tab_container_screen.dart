import 'controller/history_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:trast/core/app_export.dart';
import 'package:trast/presentation/history_page/history_page.dart';
import 'package:trast/presentation/historytwo_page/historytwo_page.dart';
import 'package:trast/widgets/app_bar/appbar_leading_image.dart';
import 'package:trast/widgets/app_bar/appbar_title.dart';
import 'package:trast/widgets/app_bar/custom_app_bar.dart';

class HistoryTabContainerScreen
    extends GetWidget<HistoryTabContainerController> {
  const HistoryTabContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray10002,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 45.v),
                    child: Column(children: [
                      _buildTabview(),
                      SizedBox(
                          height: 631.v,
                          child: TabBarView(
                              controller: controller.tabviewController,
                              children: [HistoryPage(), HistorytwoPage()]))
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftErrorcontainer,
            margin: EdgeInsets.only(left: 32.h, top: 15.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_history".tr));
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
        height: 62.v,
        width: 315.h,
        decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
            borderRadius: BorderRadius.circular(20.h),
            boxShadow: [
              BoxShadow(
                  color: theme.colorScheme.errorContainer.withOpacity(0.03),
                  spreadRadius: 2.h,
                  blurRadius: 2.h,
                  offset: Offset(0, 10))
            ]),
        child: TabBar(
            controller: controller.tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: theme.colorScheme.errorContainer.withOpacity(1),
            labelStyle: TextStyle(
                fontSize: 18.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400),
            unselectedLabelColor:
                theme.colorScheme.errorContainer.withOpacity(1),
            unselectedLabelStyle: TextStyle(
                fontSize: 18.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400),
            indicatorColor: appTheme.redA200,
            tabs: [
              Tab(child: Text("lbl_order".tr)),
              Tab(child: Text("lbl_donation2".tr))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
