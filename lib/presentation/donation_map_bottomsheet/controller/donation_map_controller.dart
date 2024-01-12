import 'package:trast/core/app_export.dart';
import 'package:trast/presentation/donation_map_bottomsheet/models/donation_map_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DonationMapBottomsheet.
///
/// This class manages the state of the DonationMapBottomsheet, including the
/// current donationMapModelObj
class DonationMapController extends GetxController {
  TextEditingController pickupAddressvalueController = TextEditingController();

  TextEditingController pickupInstructionsController = TextEditingController();

  Rx<DonationMapModel> donationMapModelObj = DonationMapModel().obs;

  @override
  void onClose() {
    super.onClose();
    pickupAddressvalueController.dispose();
    pickupInstructionsController.dispose();
  }
}
