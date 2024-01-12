import '../controller/sidebar_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SidebarScreen.
///
/// This class ensures that the SidebarController is created when the
/// SidebarScreen is first loaded.
class SidebarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SidebarController());
  }
}
