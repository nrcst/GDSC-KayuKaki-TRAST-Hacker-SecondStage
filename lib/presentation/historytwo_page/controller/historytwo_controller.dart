import 'package:trast/core/app_export.dart';
import 'package:trast/presentation/historytwo_page/models/historytwo_model.dart';

/// A controller class for the HistorytwoPage.
///
/// This class manages the state of the HistorytwoPage, including the
/// current historytwoModelObj
class HistorytwoController extends GetxController {
  HistorytwoController(this.historytwoModelObj);

  Rx<HistorytwoModel> historytwoModelObj;
}
