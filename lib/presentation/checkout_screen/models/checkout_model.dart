import 'package:trast/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';
import 'cardlist_item_model.dart';

/// This class defines the variables used in the [checkout_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CheckoutModel {
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

  Rx<List<CardlistItemModel>> cardlistItemList = Rx([
    CardlistItemModel(
        visaIcon: ImageConstant.imgVisa.obs, cardText: "Card / m-Banking".obs),
    CardlistItemModel(
        visaIcon: ImageConstant.imgSettings.obs, cardText: "E-wallet".obs),
    CardlistItemModel(cardText: "Cash".obs)
  ]);

  Rx<List<String>> radioList = Rx(["lbl_door_delivery", "lbl_pick_up"]);
}
