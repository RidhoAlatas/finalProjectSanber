import 'package:get/get.dart';

import '../controllers/digilist_controller.dart';

class DigilistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DigilistController>(
      () => DigilistController(),
    );
  }
}
