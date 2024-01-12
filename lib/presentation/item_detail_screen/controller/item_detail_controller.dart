import 'package:trast/core/app_export.dart';
import 'package:trast/presentation/item_detail_screen/models/item_detail_model.dart';

/// A controller class for the ItemDetailScreen.
///
/// This class manages the state of the ItemDetailScreen, including the
/// current itemDetailModelObj
class ItemDetailController extends GetxController {
  Rx<ItemDetailModel> itemDetailModelObj = ItemDetailModel().obs;
}
