import 'package:trast/core/app_export.dart';
import 'package:trast/presentation/donate_one_screen/models/donate_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DonateOneScreen.
///
/// This class manages the state of the DonateOneScreen, including the
/// current donateOneModelObj
class DonateOneController extends GetxController {
  TextEditingController appleController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  Rx<DonateOneModel> donateOneModelObj = DonateOneModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  @override
  void onClose() {
    super.onClose();
    appleController.dispose();
    priceController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in donateOneModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    donateOneModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element in donateOneModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    donateOneModelObj.value.dropdownItemList1.refresh();
  }
}
