import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:starter/app/routes/app_pages.dart';

import '../controllers/show_applied_candidate_controller.dart';

class ShowAppliedCandidateView extends GetView<ShowAppliedCandidateController> {
  static void launch({required String jobId}) =>
      Get.toNamed(Routes.SHOW_APPLIED_CANDIDATE, arguments: jobId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShowAppliedCandidateView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ShowAppliedCandidateView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
