import 'package:trast/core/app_export.dart';
import 'package:trast/presentation/delivery_map_bottomsheet/models/delivery_map_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DeliveryMapBottomsheet.
///
/// This class manages the state of the DeliveryMapBottomsheet, including the
/// current deliveryMapModelObj
class DeliveryMapController extends GetxController {
  TextEditingController placeController = TextEditingController();

  TextEditingController pickupInstructionsController = TextEditingController();

  Rx<DeliveryMapModel> deliveryMapModelObj = DeliveryMapModel().obs;

  @override
  void onClose() {
    super.onClose();
    placeController.dispose();
    pickupInstructionsController.dispose();
  }
}
