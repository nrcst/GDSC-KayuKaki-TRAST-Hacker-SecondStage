import '../../../core/app_export.dart';

/// This class is used in the [cardlist_item_widget] screen.
class CardlistItemModel {
  CardlistItemModel({
    this.visaIcon,
    this.cardText,
    this.id,
  }) {
    visaIcon = visaIcon ?? Rx(ImageConstant.imgVisa);
    cardText = cardText ?? Rx("Card / m-Banking");
    id = id ?? Rx("");
  }

  Rx<String>? visaIcon;

  Rx<String>? cardText;

  Rx<String>? id;
}
