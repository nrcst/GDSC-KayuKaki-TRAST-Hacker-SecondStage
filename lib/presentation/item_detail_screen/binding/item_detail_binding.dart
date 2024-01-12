import '../controller/item_detail_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ItemDetailScreen.
///
/// This class ensures that the ItemDetailController is created when the
/// ItemDetailScreen is first loaded.
class ItemDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ItemDetailController());
  }
}
