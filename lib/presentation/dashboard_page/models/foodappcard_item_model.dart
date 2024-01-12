import '../../../core/app_export.dart';

/// This class is used in the [foodappcard_item_widget] screen.
class FoodappcardItemModel {
  FoodappcardItemModel({
    this.foodImage,
    this.foodName,
    this.restaurantName,
    this.ratingImage,
    this.ratingText,
    this.id,
  }) {
    foodImage = foodImage ?? Rx(ImageConstant.imgRectangle18);
    foodName = foodName ?? Rx("Ayam goreng");
    restaurantName = restaurantName ?? Rx("Rpxxxxx");
    ratingImage = ratingImage ?? Rx(ImageConstant.imgStar1);
    ratingText = ratingText ?? Rx("4+");
    id = id ?? Rx("");
  }

  Rx<String>? foodImage;

  Rx<String>? foodName;

  Rx<String>? restaurantName;

  Rx<String>? ratingImage;

  Rx<String>? ratingText;

  Rx<String>? id;
}
