import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starter/app/data/models/dto/user.dart';
import 'package:starter/app/data/values/strings.dart';
import 'package:starter/app/modules/createjob/views/createjob_view.dart';
import 'package:starter/app/routes/app_pages.dart';
import 'package:starter/app/theme/app_colors.dart';
import 'package:starter/app/theme/styles.dart';
import 'package:starter/widgets/list_widget/job_list.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  static void launch({required UserData userData}) {
    Get.toNamed(
      Routes.HOME,
      arguments: userData,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(Strings.appName),
          actions: [
            IconButton(
              onPressed: controller.logout,
              icon: Icon(Icons.logout_rounded),
            )
          ],
        ),
        body: Obx(
          () => (controller.jobs.isNotEmpty)
              ? ListView.builder(
                  itemCount: controller.jobs.length,
                  itemBuilder: (BuildContext buildContext, int item) {
                    return JobList(jobs: controller.jobs[item]);
                  },
                )
              : Center(
                  child: Text(
                    Strings.noJobs,
                    style: Styles.tsPrimaryColorRegular18,
                  ),
                ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            CreatejobView.launch();
          },
          child: const Icon(Icons.add),
          backgroundColor: AppColors.primaryColor,
        ),
      ),
    );
  }
}
