import '../../../core/app_export.dart';

/// This class is used in the [cartappcard_item_widget] screen.
class CartappcardItemModel {
  CartappcardItemModel({
    this.image,
    this.title,
    this.price,
    this.thirtyEight,
    this.quantity,
    this.thirtySeven,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgRectangle18112x170);
    title = title ?? Rx("Sate Ayam");
    price = price ?? Rx("Rp15.000");
    thirtyEight = thirtyEight ?? Rx("-");
    quantity = quantity ?? Rx("1");
    thirtySeven = thirtySeven ?? Rx("+");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? title;

  Rx<String>? price;

  Rx<String>? thirtyEight;

  Rx<String>? quantity;

  Rx<String>? thirtySeven;

  Rx<String>? id;
}
