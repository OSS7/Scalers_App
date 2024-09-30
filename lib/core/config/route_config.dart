import 'package:get/get.dart';
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
];
