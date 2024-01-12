import 'package:trast/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';
import 'cartappcard_item_model.dart';

/// This class defines the variables used in the [cart_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CartModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<CartappcardItemModel>> cartappcardItemList = Rx([
    CartappcardItemModel(
        image: ImageConstant.imgRectangle18112x170.obs,
        title: "Sate Ayam".obs,
        price: "Rp15.000".obs,
        thirtyEight: "-".obs,
        quantity: "1".obs,
        thirtySeven: "+".obs)
  ]);
}
