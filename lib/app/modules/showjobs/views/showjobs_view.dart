import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:starter/app/data/models/dto/user.dart';
import 'package:starter/app/routes/app_pages.dart';

import '../controllers/showjobs_controller.dart';

class ShowJobsView extends GetView<ShowjobsController> {
  static void launch({required List<UserData> users}) =>
      Get.toNamed(Routes.SHOWJOBS);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShowjobsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ShowjobsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
