import 'package:trast/core/app_export.dart';
import 'package:trast/presentation/cart_screen/models/cart_model.dart';

/// A controller class for the CartScreen.
///
/// This class manages the state of the CartScreen, including the
/// current cartModelObj
class CartController extends GetxController {
  Rx<CartModel> cartModelObj = CartModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element in cartModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    cartModelObj.value.dropdownItemList.refresh();
  }
}
