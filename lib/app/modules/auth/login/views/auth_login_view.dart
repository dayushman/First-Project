import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starter/app/data/values/strings.dart';
import 'package:starter/app/modules/auth/login/controllers/auth_login_controller.dart';
import 'package:starter/app/modules/auth/signup/views/auth_signup_view.dart';
import 'package:starter/app/routes/app_pages.dart';
import 'package:starter/widgets/buttons/primary_filled_button.dart';
import 'package:starter/widgets/text_field/custom_text_field.dart';

class AuthLoginView extends GetView<AuthLoginController> {

  static void launch() => Get.toNamed(Routes.AUTH_LOGIN);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomTextField(
                    wrapper: controller.emailWrapper,
                    hintText: Strings.emailId,
                    inputType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 8.0),
                  CustomTextField(
                    wrapper: controller.passwordWrapper,
                    hintText: Strings.password,
                    inputType: TextInputType.text,
                  ),
                  SizedBox(height: 8.0),
                  GestureDetector(
                    child: Text(Strings.newUser,textAlign: TextAlign.end,),
                    onTap: AuthSignupView.launch,
                  ),
                  SizedBox(height: 8.0),
                  PrimaryFilledButton(
                    text: Strings.login,
                    onTap: controller.sendRequest,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
