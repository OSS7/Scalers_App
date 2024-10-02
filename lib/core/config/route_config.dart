import 'package:get/get.dart';
import 'package:scalers_test/presentation/resume/resume_view.dart';
import 'package:scalers_test/presentation/setting/setting_view.dart';
import '../../presentation/job_details/job_details_view.dart';
import '../../presentation/jobs/jobs_view.dart';
import '../constant/routes.dart';

const _routingTransition = Transition.fadeIn;
final isLTR = Get.locale?.languageCode.contains('en') ?? true;
List<GetPage> getPages = [
  GetPage(
    name: MyRoutes.JOBS,
    page: JobsView.new,
    transition: _routingTransition,
  ),
  GetPage(
    name: MyRoutes.JOB_DETAILS,
    page: JobDetailsView.new,
    transition: _routingTransition,
  ),
  GetPage(
    name: MyRoutes.RESUME,
    page: ResumeView.new,
    transition: _routingTransition,
  ),
  GetPage(
    name: MyRoutes.SETTINGS,
    page: SettingView.new,
    transition: _routingTransition,
  ),
];
