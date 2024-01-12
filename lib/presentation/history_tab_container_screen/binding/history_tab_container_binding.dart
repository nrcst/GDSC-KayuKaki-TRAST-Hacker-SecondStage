import '../controller/history_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HistoryTabContainerScreen.
///
/// This class ensures that the HistoryTabContainerController is created when the
/// HistoryTabContainerScreen is first loaded.
class HistoryTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HistoryTabContainerController());
  }
}
