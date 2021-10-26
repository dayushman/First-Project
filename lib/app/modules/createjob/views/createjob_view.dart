import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:starter/app/data/values/strings.dart';
import 'package:starter/app/routes/app_pages.dart';
import 'package:starter/widgets/buttons/primary_filled_button.dart';
import 'package:starter/widgets/text_field/custom_text_field.dart';

import '../controllers/createjob_controller.dart';

class CreatejobView extends GetView<CreatejobController> {
  static void launch() => Get.toNamed(Routes.CREATEJOB);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.appName),
      ),
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
                    wrapper: controller.titleWrapper,
                    hintText: Strings.jobTitle,
                    inputType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 8.0),
                  CustomTextField(
                    maxLength: 3,
                    wrapper: controller.descWrapper,
                    hintText: Strings.jobDesc,
                    inputType: TextInputType.text,
                  ),
                  SizedBox(height: 8.0),
                  CustomTextField(
                    wrapper: controller.locationWrapper,
                    hintText: Strings.jobsLocation,
                    inputType: TextInputType.text,
                  ),
                  SizedBox(height: 8.0),
                  PrimaryFilledButton(
                    text: Strings.createAJob,
                    onTap: controller.createJob,
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
