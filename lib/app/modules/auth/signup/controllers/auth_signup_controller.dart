import 'package:get/get.dart';
import 'package:starter/app/data/values/strings.dart';
import 'package:starter/utils/helper/text_field_wrapper.dart';

class AuthSignupController extends GetxController {
  //TODO: Implement AuthSignupController
  final emailWrapper = TextFieldWrapper();
  final nameWrapper = TextFieldWrapper();
  final passwordWrapper = TextFieldWrapper();
  final confirmPasswordWrapper = TextFieldWrapper();
  final skillsWrapper = TextFieldWrapper();

  void sendRegisterRequest(){
    bool flag = true;
    String email = emailWrapper.controller.text;
    String name = nameWrapper.controller.text;
    String password = passwordWrapper.controller.text;
    String confirmPassword = confirmPasswordWrapper.controller.text;
    String skills = skillsWrapper.controller.text;
    if(!email.isEmail){
      flag = false;
      emailWrapper.errorText = ErrorMessages.invalidEmail;
    }
    if(name.isNotEmpty && !name.isAlphabetOnly){
      flag = false;
      nameWrapper.errorText = ErrorMessages.invalidName;
    }
    if(skills.isNotEmpty){
      flag = false;
      skillsWrapper.errorText = ErrorMessages.emptySkills;
    }
    if(password.isEmpty && password.length >= 8){
      flag = false;
      passwordWrapper.errorText = ErrorMessages.invalidPassword;
    }else{
      if(confirmPassword.isNotEmpty && confirmPassword.length >= 8){
        if(confirmPassword == password){
          // doTheCall();
        }else{
          flag = false;
        }
      }else{
        flag = false;
        confirmPasswordWrapper.errorText = ErrorMessages.invalidConfirmPassword;
      }
    }

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
