import 'package:trast/core/app_export.dart';
import 'package:trast/presentation/checkout_screen/models/checkout_model.dart';

/// A controller class for the CheckoutScreen.
///
/// This class manages the state of the CheckoutScreen, including the
/// current checkoutModelObj
class CheckoutController extends GetxController {
  Rx<CheckoutModel> checkoutModelObj = CheckoutModel().obs;

  Rx<String> deliveryMethod = "".obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element in checkoutModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    checkoutModelObj.value.dropdownItemList.refresh();
  }
}
