import 'package:trast/core/app_export.dart';
import 'package:trast/presentation/history_tab_container_screen/models/history_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HistoryTabContainerScreen.
///
/// This class manages the state of the HistoryTabContainerScreen, including the
/// current historyTabContainerModelObj
class HistoryTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<HistoryTabContainerModel> historyTabContainerModelObj =
      HistoryTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
