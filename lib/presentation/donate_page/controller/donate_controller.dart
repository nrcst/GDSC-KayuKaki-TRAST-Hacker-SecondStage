import 'package:trast/core/app_export.dart';
import 'package:trast/presentation/donate_page/models/donate_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DonatePage.
///
/// This class manages the state of the DonatePage, including the
/// current donateModelObj
class DonateController extends GetxController {
  DonateController(this.donateModelObj);

  TextEditingController nasiGorengController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  Rx<DonateModel> donateModelObj;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  @override
  void onClose() {
    super.onClose();
    nasiGorengController.dispose();
    priceController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in donateModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    donateModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element in donateModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    donateModelObj.value.dropdownItemList1.refresh();
  }
}
