import '../controller/dashboard_controller.dart';
import '../models/foodappcard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trast/core/app_export.dart';

// ignore: must_be_immutable
class FoodappcardItemWidget extends StatelessWidget {
  FoodappcardItemWidget(
    this.foodappcardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FoodappcardItemModel foodappcardItemModelObj;

  var controller = Get.find<DashboardController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineGrayC.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      width: 200.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: foodappcardItemModelObj.foodImage!.value,
              height: 112.v,
              width: 170.h,
              radius: BorderRadius.circular(
                20.h,
              ),
            ),
          ),
          SizedBox(height: 21.v),
          Obx(
            () => Text(
              foodappcardItemModelObj.foodName!.value,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 5.v),
          Obx(
            () => Text(
              foodappcardItemModelObj.restaurantName!.value,
              style: CustomTextStyles.bodySmallDMSansGray80001_1,
            ),
          ),
          SizedBox(height: 30.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Row(
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: foodappcardItemModelObj.ratingImage!.value,
                    height: 15.adaptSize,
                    width: 15.adaptSize,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Obx(
                    () => Text(
                      foodappcardItemModelObj.ratingText!.value,
                      style: CustomTextStyles.bodySmallDMSansGray80001_1,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }
}
