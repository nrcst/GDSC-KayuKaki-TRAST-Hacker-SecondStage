import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist_item_widget] screen.
class UserprofilelistItemModel {
  UserprofilelistItemModel({
    this.nasiGoreng,
    this.date,
    this.id,
  }) {
    nasiGoreng = nasiGoreng ?? Rx("Nasi Goreng");
    date = date ?? Rx("21 July 2024");
    id = id ?? Rx("");
  }

  Rx<String>? nasiGoreng;

  Rx<String>? date;

  Rx<String>? id;
}
