import '../historytwo_page/widgets/userprofilelist_item_widget.dart';
import 'controller/historytwo_controller.dart';
import 'models/historytwo_model.dart';
import 'models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:trast/core/app_export.dart';

class HistorytwoPage extends StatelessWidget {
  HistorytwoPage({Key? key})
      : super(
          key: key,
        );

  HistorytwoController controller =
      Get.put(HistorytwoController(HistorytwoModel().obs));

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
                SizedBox(height: 9.v),
                Container(
                  height: 641.v,
                  width: 362.h,
                  margin: EdgeInsets.symmetric(horizontal: 6.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "lbl_updatet".tr,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyLargeInterGray10001,
                        ),
                      ),
                      _buildUserProfileList(),
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
  Widget _buildUserProfileList() {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.only(bottom: 10.v),
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 36.v,
        ),
        decoration: AppDecoration.outlineErrorContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder18,
        ),
        child: Obx(
          () => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 19.v,
              );
            },
            itemCount: controller
                .historytwoModelObj.value.userprofilelistItemList.value.length,
            itemBuilder: (context, index) {
              UserprofilelistItemModel model = controller.historytwoModelObj
                  .value.userprofilelistItemList.value[index];
              return UserprofilelistItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
