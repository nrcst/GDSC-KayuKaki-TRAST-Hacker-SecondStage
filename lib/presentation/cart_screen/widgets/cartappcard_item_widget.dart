import '../controller/cart_controller.dart';
import '../models/cartappcard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trast/core/app_export.dart';

// ignore: must_be_immutable
class CartappcardItemWidget extends StatelessWidget {
  CartappcardItemWidget(
    this.cartappcardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CartappcardItemModel cartappcardItemModelObj;

  var controller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Row(
        children: [
          Container(
            height: 68.v,
            width: 78.h,
            padding: EdgeInsets.symmetric(
              horizontal: 4.h,
              vertical: 11.v,
            ),
            decoration: AppDecoration.outlineOnPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder18,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath: cartappcardItemModelObj.image!.value,
                height: 45.v,
                width: 70.h,
                radius: BorderRadius.circular(
                  20.h,
                ),
                alignment: Alignment.center,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    cartappcardItemModelObj.title!.value,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 22.v),
                Obx(
                  () => Text(
                    cartappcardItemModelObj.price!.value,
                    style: CustomTextStyles.titleMediumRedA200,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 22.v),
            padding: EdgeInsets.symmetric(
              horizontal: 7.h,
              vertical: 1.v,
            ),
            decoration: AppDecoration.gradientYellowToPrimary.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder12,
            ),
            child: Obx(
              () => Text(
                cartappcardItemModelObj.thirtyEight!.value,
                style: CustomTextStyles.titleMediumOnPrimaryContainer,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 24.v,
              bottom: 22.v,
            ),
            child: Obx(
              () => Text(
                cartappcardItemModelObj.quantity!.value,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          Container(
            width: 24.adaptSize,
            margin: EdgeInsets.fromLTRB(8.h, 22.v, 14.h, 22.v),
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 1.v,
            ),
            decoration: AppDecoration.gradientYellowToPrimary.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder12,
            ),
            child: Obx(
              () => Text(
                cartappcardItemModelObj.thirtySeven!.value,
                style: CustomTextStyles.titleMediumOnPrimaryContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
