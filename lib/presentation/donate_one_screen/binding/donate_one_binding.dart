import '../controller/donate_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DonateOneScreen.
///
/// This class ensures that the DonateOneController is created when the
/// DonateOneScreen is first loaded.
class DonateOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DonateOneController());
  }
}
