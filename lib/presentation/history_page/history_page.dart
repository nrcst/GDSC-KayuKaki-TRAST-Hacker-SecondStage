import 'controller/history_controller.dart';
import 'models/history_model.dart';
import 'package:flutter/material.dart';
import 'package:trast/core/app_export.dart';

class HistoryPage extends StatelessWidget {
  HistoryPage({Key? key})
      : super(
          key: key,
        );

  HistoryController controller = Get.put(HistoryController(HistoryModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10002,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 18.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.h),
                  child: Column(
                    children: [
                      _buildTotalExpenseRow(),
                      SizedBox(height: 12.v),
                      SizedBox(
                        height: 631.v,
                        width: 362.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 44.v),
                                child: Text(
                                  "lbl_updatet".tr,
                                  textAlign: TextAlign.center,
                                  style:
                                      CustomTextStyles.bodyLargeInterGray10001,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 19.h,
                                  vertical: 36.v,
                                ),
                                decoration: AppDecoration.outlineErrorContainer
                                    .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder18,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 21.h),
                                      child: _buildNasiGorengRow(
                                        nasiGoreng: "lbl_nasi_goreng".tr,
                                        date: "lbl_21_july_2024".tr,
                                      ),
                                    ),
                                    SizedBox(height: 7.v),
                                    Opacity(
                                      opacity: 0.3,
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          height: 1.v,
                                          width: 266.h,
                                          margin: EdgeInsets.only(left: 22.h),
                                          decoration: BoxDecoration(
                                            color: theme
                                                .colorScheme.errorContainer,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 21.v),
                                    Padding(
                                      padding: EdgeInsets.only(left: 22.h),
                                      child: _buildNasiGorengRow(
                                        nasiGoreng: "lbl_nasi_goreng".tr,
                                        date: "lbl_21_july_2024".tr,
                                      ),
                                    ),
                                    SizedBox(height: 17.v),
                                    Opacity(
                                      opacity: 0.3,
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          height: 1.v,
                                          width: 266.h,
                                          margin: EdgeInsets.only(left: 20.h),
                                          decoration: BoxDecoration(
                                            color: theme
                                                .colorScheme.errorContainer,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 17.v),
                                    Padding(
                                      padding: EdgeInsets.only(left: 22.h),
                                      child: _buildNasiGorengRow(
                                        nasiGoreng: "lbl_nasi_goreng".tr,
                                        date: "lbl_21_july_2024".tr,
                                      ),
                                    ),
                                    SizedBox(height: 17.v),
                                    Opacity(
                                      opacity: 0.3,
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          height: 1.v,
                                          width: 266.h,
                                          margin: EdgeInsets.only(left: 20.h),
                                          decoration: BoxDecoration(
                                            color: theme
                                                .colorScheme.errorContainer,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 18.v),
                                    Padding(
                                      padding: EdgeInsets.only(left: 22.h),
                                      child: _buildNasiGorengRow(
                                        nasiGoreng: "lbl_nasi_goreng".tr,
                                        date: "lbl_21_july_2024".tr,
                                      ),
                                    ),
                                    SizedBox(height: 21.v),
                                    Opacity(
                                      opacity: 0.3,
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          height: 1.v,
                                          width: 266.h,
                                          margin: EdgeInsets.only(left: 19.h),
                                          decoration: BoxDecoration(
                                            color: theme
                                                .colorScheme.errorContainer,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 22.v),
                                    Padding(
                                      padding: EdgeInsets.only(left: 21.h),
                                      child: _buildNasiGorengRow(
                                        nasiGoreng: "lbl_nasi_goreng".tr,
                                        date: "lbl_21_july_2024".tr,
                                      ),
                                    ),
                                    SizedBox(height: 22.v),
                                    Opacity(
                                      opacity: 0.3,
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          height: 1.v,
                                          width: 265.h,
                                          margin: EdgeInsets.only(left: 20.h),
                                          decoration: BoxDecoration(
                                            color: theme
                                                .colorScheme.errorContainer,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 22.v),
                                    Padding(
                                      padding: EdgeInsets.only(left: 22.h),
                                      child: _buildNasiGorengRow(
                                        nasiGoreng: "lbl_nasi_goreng".tr,
                                        date: "lbl_21_july_2024".tr,
                                      ),
                                    ),
                                    SizedBox(height: 17.v),
                                    Opacity(
                                      opacity: 0.3,
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          height: 1.v,
                                          width: 265.h,
                                          margin: EdgeInsets.only(left: 19.h),
                                          decoration: BoxDecoration(
                                            color: theme
                                                .colorScheme.errorContainer,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 27.v),
                                    Padding(
                                      padding: EdgeInsets.only(left: 21.h),
                                      child: _buildNasiGorengRow(
                                        nasiGoreng: "lbl_nasi_goreng".tr,
                                        date: "lbl_21_july_2024".tr,
                                      ),
                                    ),
                                    SizedBox(height: 21.v),
                                  ],
                                ),
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
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTotalExpenseRow() {
    return Padding(
      padding: EdgeInsets.only(
        left: 18.h,
        right: 13.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 11.v,
            ),
            child: Text(
              "lbl_total_expense".tr,
              style: CustomTextStyles.bodyMediumGray80001,
            ),
          ),
          Text(
            "lbl_rp1_000_000".tr,
            style: theme.textTheme.headlineSmall,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildNasiGorengRow({
    required String nasiGoreng,
    required String date,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 6.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nasiGoreng,
                style: theme.textTheme.bodyLarge!.copyWith(
                  color: theme.colorScheme.errorContainer.withOpacity(1),
                ),
              ),
              SizedBox(height: 1.v),
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: Text(
                  date,
                  style: theme.textTheme.bodySmall!.copyWith(
                    color: appTheme.gray400,
                  ),
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgRectangle18112x170,
          height: 42.v,
          width: 65.h,
          radius: BorderRadius.circular(
            20.h,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            left: 10.h,
            top: 11.v,
            bottom: 8.v,
          ),
        ),
      ],
    );
  }
}
