import 'package:get/get.dart';

import '../controllers/showjobs_controller.dart';

class ShowjobsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShowjobsController>(
      () => ShowjobsController(),
    );
  }
}
