import 'package:get/get.dart';

import '../controllers/reate_app_controller.dart';

class ReateAppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReateAppController>(
      () => ReateAppController(),
    );
  }
}
