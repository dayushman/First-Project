import 'package:get/get.dart';
import 'package:starter/app/data/models/dto/response.dart';
import 'package:starter/app/data/models/request/auth_request.dart';
import 'package:starter/app/data/repository/user_repository.dart';
import 'package:starter/app/data/values/strings.dart';
import 'package:starter/app/routes/app_pages.dart';
import 'package:starter/utils/helper/text_field_wrapper.dart';
import 'package:starter/utils/helper/validators.dart';
import 'package:starter/utils/loading/loading_utils.dart';

class AuthLoginController extends GetxController {
  final emailWrapper = TextFieldWrapper();
  final passwordWrapper = TextFieldWrapper();
  final _repository = UserRepository();

  sendRequest() async {
    String email = emailWrapper.controller.text.trim();
    if (email.isValidEmail()) {
      emailWrapper.errorText = Strings.empty;

    } else {
      emailWrapper.errorText = ErrorMessages.invalidEmail;
      return;
    }

    LoadingUtils.showLoader();
    RepoResponse<bool> response =
        await _repository.sendOTP(SendOTPRequest(phone: email));
    LoadingUtils.hideLoader();

    if (response.data ?? false) {
      Get.toNamed(Routes.AUTH_VERIFY_OTP, arguments: email);
    } else {
      emailWrapper.errorText = response.error?.message ?? "";
    }
  }
}
