import '../../../core/app_export.dart';
import 'userprofilelist_item_model.dart';

/// This class defines the variables used in the [historytwo_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HistorytwoModel {
  Rx<List<UserprofilelistItemModel>> userprofilelistItemList = Rx([
    UserprofilelistItemModel(
        nasiGoreng: "Nasi Goreng".obs, date: "21 July 2024".obs)
  ]);
}
