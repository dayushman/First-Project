import 'package:get/get.dart';

import '../controllers/show_applied_candidate_controller.dart';

class ShowAppliedCandidateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShowAppliedCandidateController>(
      () => ShowAppliedCandidateController(),
    );
  }
}
