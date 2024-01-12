import '../controller/payment_method_controller.dart';
import '../models/paymentmethod_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trast/core/app_export.dart';

// ignore: must_be_immutable
class PaymentmethodItemWidget extends StatelessWidget {
  PaymentmethodItemWidget(
    this.paymentmethodItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PaymentmethodItemModel paymentmethodItemModelObj;

  var controller = Get.find<PaymentMethodController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24.adaptSize,
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 1.v,
      ),
      decoration: AppDecoration.gradientYellowToPrimary.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder12,
      ),
      child: Obx(
        () => Text(
          paymentmethodItemModelObj.group!.value,
          style: CustomTextStyles.titleMediumOnPrimaryContainer,
        ),
      ),
    );
  }
}
