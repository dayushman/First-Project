import 'package:get/get.dart';

import 'package:starter/app/modules/auth/login/bindings/auth_login_binding.dart';
import 'package:starter/app/modules/auth/login/views/auth_login_view.dart';
import 'package:starter/app/modules/auth/signup/bindings/auth_signup_binding.dart';
import 'package:starter/app/modules/auth/signup/views/auth_signup_view.dart';
import 'package:starter/app/modules/createjob/bindings/createjob_binding.dart';
import 'package:starter/app/modules/createjob/views/createjob_view.dart';
import 'package:starter/app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:starter/app/modules/dashboard/views/dashboard_view.dart';
import 'package:starter/app/modules/show_applied_candidate/bindings/show_applied_candidate_binding.dart';
import 'package:starter/app/modules/show_applied_candidate/views/show_applied_candidate_view.dart';
import 'package:starter/app/modules/showjobs/bindings/showjobs_binding.dart';
import 'package:starter/app/modules/showjobs/views/showjobs_view.dart';

part 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.AUTH_LOGIN,
      page: () => AuthLoginView(),
      binding: AuthLoginBinding(),
    ),
    GetPage(
      name: Routes.AUTH_SIGNUP,
      page: () => AuthSignupView(),
      binding: AuthSignupBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: Routes.CREATEJOB,
      page: () => CreatejobView(),
      binding: CreatejobBinding(),
    ),
    GetPage(
      name: Routes.SHOWJOBS,
      page: () => ShowJobsView(),
      binding: ShowjobsBinding(),
    ),
    GetPage(
      name: Routes.SHOW_APPLIED_CANDIDATE,
      page: () => ShowAppliedCandidateView(),
      binding: ShowAppliedCandidateBinding(),
    ),
  ];
}
