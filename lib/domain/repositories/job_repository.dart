
import 'package:scalers_test/data/models/job_details_model.dart';

import '../../data/models/job_model.dart';

abstract class JobRepository {
  Future<List<JobModel>> getJobs();
  Future<JobDetailsModel> getJobDetails(String jobUUID);
}