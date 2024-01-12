import 'package:trast/core/app_export.dart';
import 'package:trast/presentation/profil_screen/models/profil_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProfilScreen.
///
/// This class manages the state of the ProfilScreen, including the
/// current profilModelObj
class ProfilController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  Rx<ProfilModel> profilModelObj = ProfilModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    phoneNumberController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in profilModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    profilModelObj.value.dropdownItemList.refresh();
  }
}
