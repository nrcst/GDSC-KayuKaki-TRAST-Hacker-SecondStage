import '../../../core/app_export.dart';

/// This class is used in the [paymentmethod_item_widget] screen.
class PaymentmethodItemModel {
  PaymentmethodItemModel({
    this.group,
    this.id,
  }) {
    group = group ?? Rx("+");
    id = id ?? Rx("");
  }

  Rx<String>? group;

  Rx<String>? id;
}
