import 'package:trast/core/app_export.dart';
import 'package:trast/presentation/history_page/models/history_model.dart';

/// A controller class for the HistoryPage.
///
/// This class manages the state of the HistoryPage, including the
/// current historyModelObj
class HistoryController extends GetxController {
  HistoryController(this.historyModelObj);

  Rx<HistoryModel> historyModelObj;
}
