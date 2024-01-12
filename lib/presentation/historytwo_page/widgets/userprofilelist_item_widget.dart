import '../controller/historytwo_controller.dart';
import '../models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trast/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(
    this.userprofilelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  var controller = Get.find<HistorytwoController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 6.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        userprofilelistItemModelObj.nasiGoreng!.value,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(height: 1.v),
                    Padding(
                      padding: EdgeInsets.only(left: 5.h),
                      child: Obx(
                        () => Text(
                          userprofilelistItemModelObj.date!.value,
                          style: theme.textTheme.bodySmall,
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
              Container(
                height: 15.adaptSize,
                width: 15.adaptSize,
                margin: EdgeInsets.only(
                  left: 17.h,
                  top: 13.v,
                  bottom: 15.v,
                ),
                decoration: BoxDecoration(
                  color: appTheme.greenA700,
                  borderRadius: BorderRadius.circular(
                    7.h,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 7.v),
          Opacity(
            opacity: 0.3,
            child: Container(
              height: 1.v,
              width: 266.h,
              decoration: BoxDecoration(
                color: theme.colorScheme.errorContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
