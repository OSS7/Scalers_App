import 'package:get/get.dart';
import 'package:scalers_test/feature/job/jobs/jobs_view.dart';

import '../constant/routes.dart';

const _routingTransition = Transition.fadeIn;
final isLTR = Get.locale?.languageCode.contains('en') ?? true;
List<GetPage> getPages = [
  GetPage(
    name: MyRoutes.JOBS,
    page: JobsView.new,
    transition: _routingTransition,
  ),
];
