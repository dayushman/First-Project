import 'package:get/get.dart';
import 'package:starter/app/data/models/dto/job.dart';
import 'package:starter/app/data/models/dto/user.dart';
import 'package:starter/app/data/repository/user_repository.dart';
import 'package:starter/utils/helper/exception_handler.dart';
import 'package:starter/utils/loading/loading_utils.dart';
import 'package:starter/utils/storage/storage_utils.dart';

class DashboardController extends GetxController {
  final _repository = UserRepository();
  final _jobs = RxList<Job>([]);

  List<Job> get jobs => _jobs;

  final _userdata = Get.arguments;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    getJobs(userData: _userdata);
  }

  @override
  void onClose() {}

  void getJobs({required UserData userData}) async {
    LoadingUtils.showLoader();
    final res = await _repository.getAllPostedJobs(userData: userData);
    LoadingUtils.hideLoader();
    if (res.error == null) {
      _jobs.assignAll(res.data!.data.jobs);
    } else {
      HandleError.handleError(res.error);
    }
  }

  void logout() {
    Storage.logout();
  }
}
