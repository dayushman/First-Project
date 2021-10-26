import 'package:get/get.dart';
import 'package:starter/app/data/repository/user_repository.dart';
import 'package:starter/app/data/values/strings.dart';
import 'package:starter/app/modules/dashboard/views/dashboard_view.dart';
import 'package:starter/utils/helper/text_field_wrapper.dart';
import 'package:starter/utils/helper/validators.dart';
import 'package:starter/utils/loading/loading_utils.dart';
import 'package:starter/utils/storage/storage_utils.dart';

class AuthLoginController extends GetxController {
  final emailWrapper = TextFieldWrapper();
  final passwordWrapper = TextFieldWrapper();
  final _repository = UserRepository();

  sendRequest() async {
    String email = emailWrapper.controller.text.trim();
    String password = passwordWrapper.controller.text.trim();
    if (email.isValidEmail()) {
      emailWrapper.errorText = Strings.empty;
    } else {
      emailWrapper.errorText = ErrorMessages.invalidEmail;
      return;
    }
    if (password.isNotEmpty && password.length >6) {
      emailWrapper.errorText = Strings.empty;
    } else {
      emailWrapper.errorText = ErrorMessages.invalidEmail;
      return;
    }
    LoadingUtils.showLoader();
    final response = await _repository.login(email: email, password: password);
    LoadingUtils.hideLoader();

    if (response.error == null) {
      if(response.data!.success){
        Storage.setAuth(response.data!.data.token);
        Storage.setUser(response.data!.data);
        clearAll();
        DashboardView.launch(userData: response.data!.data);
      }
    } else {
      emailWrapper.errorText = response.error?.message ?? "";
    }
  }

  void clearAll(){
    emailWrapper.controller.text = Strings.empty;
    passwordWrapper.controller.text = Strings.empty;
  }

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
}
