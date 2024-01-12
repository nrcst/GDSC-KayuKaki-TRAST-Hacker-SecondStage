import 'package:trast/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';
import 'foodappcard_item_model.dart';

/// This class defines the variables used in the [dashboard_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DashboardModel {
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

  Rx<List<FoodappcardItemModel>> foodappcardItemList = Rx([
    FoodappcardItemModel(
        foodImage: ImageConstant.imgRectangle18.obs,
        foodName: "Ayam goreng".obs,
        restaurantName: "Rpxxxxx".obs,
        ratingImage: ImageConstant.imgStar1.obs,
        ratingText: "4+".obs),
    FoodappcardItemModel(
        foodImage: ImageConstant.imgRectangle18112x170.obs,
        foodName: "Sate Ayam".obs,
        restaurantName: "Rpxxxxxx".obs,
        ratingImage: ImageConstant.imgStar115x15.obs,
        ratingText: "4+".obs)
  ]);
}
