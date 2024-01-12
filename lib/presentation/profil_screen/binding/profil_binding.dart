import '../controller/profil_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfilScreen.
///
/// This class ensures that the ProfilController is created when the
/// ProfilScreen is first loaded.
class ProfilBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfilController());
  }
}
