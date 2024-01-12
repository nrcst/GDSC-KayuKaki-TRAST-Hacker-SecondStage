import 'controller/notification_controller.dart';
import 'models/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:trast/core/app_export.dart';
import 'package:trast/widgets/custom_icon_button.dart';

class NotificationPage extends StatelessWidget {
  NotificationPage({Key? key})
      : super(
          key: key,
        );

  NotificationController controller =
      Get.put(NotificationController(NotificationModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
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
            decoration: AppDecoration.fillGray.copyWith(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgSplash,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 34.v),
                Padding(
                  padding: EdgeInsets.only(left: 21.h),
                  child: CustomIconButton(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    padding: EdgeInsets.all(11.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgMegaphone,
                    ),
                  ),
                ),
                SizedBox(height: 23.v),
                Padding(
                  padding: EdgeInsets.only(left: 33.h),
                  child: Text(
                    "lbl_notification".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
                SizedBox(height: 20.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.only(left: 25.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 42.v,
                    ),
                    decoration: AppDecoration.outlineErrorContainer.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder18,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildOrderStatus(),
                        SizedBox(height: 23.v),
                        Opacity(
                          opacity: 0.3,
                          child: Container(
                            height: 1.v,
                            width: 262.h,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.errorContainer,
                            ),
                          ),
                        ),
                        SizedBox(height: 35.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 29.h,
                              right: 9.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "msg_your_order_is_on".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 5.v),
                                  child: Text(
                                    "lbl_34m".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 27.v),
                        Opacity(
                          opacity: 0.3,
                          child: Container(
                            height: 1.v,
                            width: 262.h,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.errorContainer,
                            ),
                          ),
                        ),
                        SizedBox(height: 32.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 29.h,
                              right: 6.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "msg_your_order_has_been2".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 55.h,
                                    bottom: 5.v,
                                  ),
                                  child: Text(
                                    "lbl_1h5m".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 24.v),
                        Opacity(
                          opacity: 0.3,
                          child: Container(
                            height: 1.v,
                            width: 262.h,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.errorContainer,
                            ),
                          ),
                        ),
                        SizedBox(height: 30.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 29.h,
                            right: 12.h,
                          ),
                          child: _buildDonationRequest(
                            donationRequestText: "msg_your_donation_has".tr,
                            dText: "lbl_1d".tr,
                          ),
                        ),
                        SizedBox(height: 11.v),
                        Opacity(
                          opacity: 0.3,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: 1.v,
                              width: 262.h,
                              margin: EdgeInsets.only(left: 29.h),
                              decoration: BoxDecoration(
                                color: theme.colorScheme.errorContainer,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 30.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 31.h,
                            right: 12.h,
                          ),
                          child: _buildDonationRequest(
                            donationRequestText: "msg_donation_request".tr,
                            dText: "lbl_1d".tr,
                          ),
                        ),
                        SizedBox(height: 16.v),
                        Opacity(
                          opacity: 0.3,
                          child: Container(
                            height: 1.v,
                            width: 259.h,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.errorContainer,
                            ),
                          ),
                        ),
                        SizedBox(height: 30.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 31.h,
                            right: 12.h,
                          ),
                          child: _buildDonationRequest(
                            donationRequestText: "msg_your_order_has_been3".tr,
                            dText: "lbl_2d".tr,
                          ),
                        ),
                        SizedBox(height: 32.v),
                        Opacity(
                          opacity: 0.3,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: 1.v,
                              width: 259.h,
                              margin: EdgeInsets.only(left: 30.h),
                              decoration: BoxDecoration(
                                color: theme.colorScheme.errorContainer,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 30.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 29.h,
                            right: 12.h,
                          ),
                          child: _buildDonationRequest(
                            donationRequestText: "msg_your_order_has_been2".tr,
                            dText: "lbl_2d".tr,
                          ),
                        ),
                        SizedBox(height: 33.v),
                      ],
                    ),
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
  Widget _buildOrderStatus() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 12.h),
        child: Row(
          children: [
            Container(
              height: 17.v,
              width: 18.h,
              margin: EdgeInsets.only(bottom: 2.v),
              decoration: BoxDecoration(
                color: appTheme.deepOrangeA400,
                borderRadius: BorderRadius.circular(
                  9.h,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 26.h),
              child: Text(
                "msg_your_order_has_been".tr,
                style: theme.textTheme.bodyLarge,
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.v),
              child: Text(
                "lbl_1m".tr,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildDonationRequest({
    required String donationRequestText,
    required String dText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SizedBox(
            width: 202.h,
            child: Text(
              donationRequestText,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.errorContainer.withOpacity(1),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 73.h,
            bottom: 24.v,
          ),
          child: Text(
            dText,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.gray400,
            ),
          ),
        ),
      ],
    );
  }
}
