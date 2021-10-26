import 'package:get/get.dart';
import 'package:starter/app/data/repository/user_repository.dart';
import 'package:starter/app/data/values/strings.dart';
import 'package:starter/utils/helper/exception_handler.dart';
import 'package:starter/utils/helper/text_field_wrapper.dart';
import 'package:starter/utils/loading/loading_utils.dart';

class CreatejobController extends GetxController {
  //TODO: Implement CreatejobController

  final titleWrapper = TextFieldWrapper();
  final descWrapper = TextFieldWrapper();
  final locationWrapper = TextFieldWrapper();
  final _repository = UserRepository();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void createJob() async {
    final title = titleWrapper.controller.text;
    final desc = descWrapper.controller.text;
    final location = locationWrapper.controller.text;
    if (title.isNotEmpty) {
      titleWrapper.errorText = Strings.empty;
    } else {
      titleWrapper.errorText = ErrorMessages.thisFieldCantBeEmpty;
      return;
    }
    if (desc.isNotEmpty) {
      descWrapper.errorText = Strings.empty;
    } else {
      descWrapper.errorText = ErrorMessages.thisFieldCantBeEmpty;
      return;
    }
    if (location.isNotEmpty) {
      locationWrapper.errorText = Strings.empty;
    } else {
      locationWrapper.errorText = ErrorMessages.invalidName;
      return;
    }
    LoadingUtils.showLoader();
    final response = await _repository.createAJob(
        location: location, title: title, description: desc);
    LoadingUtils.hideLoader();
    if (response.error == null) {
      if (response.data != null) {
        Get.back();
        Get.rawSnackbar(message: "Job Posted!");
      }
    } else {
      HandleError.handleError(response.error);
    }
  }
}
