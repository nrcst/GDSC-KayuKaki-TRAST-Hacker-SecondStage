import '../controller/checkout_controller.dart';
import '../models/cardlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trast/core/app_export.dart';
import 'package:trast/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class CardlistItemWidget extends StatelessWidget {
  CardlistItemWidget(
    this.cardlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CardlistItemModel cardlistItemModelObj;

  var controller = Get.find<CheckoutController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 11.v,
              bottom: 14.v,
            ),
            padding: EdgeInsets.all(3.h),
            decoration: AppDecoration.outlineDeepOrangeA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder7,
            ),
            child: Container(
              height: 7.adaptSize,
              width: 7.adaptSize,
              decoration: BoxDecoration(
                color: appTheme.deepOrangeA400,
                borderRadius: BorderRadius.circular(
                  3.h,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Obx(
              () => CustomIconButton(
                height: 40.adaptSize,
                width: 40.adaptSize,
                padding: EdgeInsets.all(5.h),
                decoration: IconButtonStyleHelper.fillGray,
                child: CustomImageView(
                  imagePath: cardlistItemModelObj.visaIcon!.value,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 11.v,
              bottom: 8.v,
            ),
            child: Obx(
              () => Text(
                cardlistItemModelObj.cardText!.value,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
