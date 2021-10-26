import 'package:get/get.dart';
import 'package:starter/app/data/models/request/auth_request.dart';
import 'package:starter/app/data/repository/user_repository.dart';
import 'package:starter/app/data/values/strings.dart';
import 'package:starter/app/modules/dashboard/views/dashboard_view.dart';
import 'package:starter/utils/helper/exception_handler.dart';
import 'package:starter/utils/helper/text_field_wrapper.dart';
import 'package:starter/utils/loading/loading_utils.dart';
import 'package:starter/utils/storage/storage_utils.dart';

class AuthSignupController extends GetxController {
  final emailWrapper = TextFieldWrapper();
  final nameWrapper = TextFieldWrapper();
  final passwordWrapper = TextFieldWrapper();
  final confirmPasswordWrapper = TextFieldWrapper();
  final skillsWrapper = TextFieldWrapper();

  final _repository = UserRepository();

  void sendRegisterRequest() async {
    bool flag = true;
    final email = emailWrapper.controller.text;
    final name = nameWrapper.controller.text;
    final password = passwordWrapper.controller.text;
    final confirmPassword = confirmPasswordWrapper.controller.text;
    final skills = skillsWrapper.controller.text;
    if (!email.isEmail) {
      flag = false;
      emailWrapper.errorText = ErrorMessages.invalidEmail;
      return;
    }
    if (name.isEmpty && !name.isAlphabetOnly) {
      flag = false;
      nameWrapper.errorText = ErrorMessages.invalidName;
      return;
    }
    if (skills.isEmpty) {
      flag = false;
      skillsWrapper.errorText = ErrorMessages.emptySkills;
      return;
    } else {}
    if (password.isEmpty && password.length >= 8) {
      flag = false;
      passwordWrapper.errorText = ErrorMessages.invalidPassword;
      return;
    } else {
      if (confirmPassword.isNotEmpty && confirmPassword.length >= 8) {
        if (confirmPassword == password) {
          // doTheCall();

        } else {
          flag = false;
          confirmPasswordWrapper.errorText = ErrorMessages.passwordsDontMatch;
          return;
        }
      } else {
        flag = false;
        confirmPasswordWrapper.errorText = ErrorMessages.invalidConfirmPassword;
        return;
      }
    }
    if (flag) {
      LoadingUtils.showLoader();
      final res = await _repository.signUp(SignUpRequest(
          email: email,
          userRole: 0,
          password: password,
          confirmPassword: confirmPassword,
          name: name,
          skills: skills));
      LoadingUtils.hideLoader();
      if (res.error == null) {
        if (res.data!.success) {
          Storage.setAuth(res.data!.data.token);
          Storage.setUser(res.data!.data);
          DashboardView.launch(userData: res.data!.data);
        }
      } else {
        if (res.error!.errors.isNotEmpty) {
          final error = res.error!.errors;
          emailWrapper.errorText = error['email'] ?? '';
          nameWrapper.errorText = error['name'] ?? '';
          passwordWrapper.errorText = error['password'] ?? '';
          skillsWrapper.errorText = error['userRole'] ?? '';
        } else
          HandleError.handleError(res.error);
      }
    }
  }

  void clearAll() {
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
