import 'package:get/get.dart';
import 'package:starter/app/data/models/response/get_applied_candidate_response.dart';
import 'package:starter/app/data/repository/user_repository.dart';

class ShowAppliedCandidateController extends GetxController {
  //TODO: Implement ShowAppliedCandidateController

  final _candidates = RxList<Candidate>([]);
  final _repository = UserRepository();
  final _jobId = Get.arguments;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    getAllCandidate();
  }

  @override
  void onClose() {}

  void getAllCandidate() {}
}
