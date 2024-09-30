import 'package:scalers_test/data/models/job_details_model.dart';

import '../../data/models/job_api_model.dart';
import '../../data/models/job_model.dart';
import 'job_repository.dart'; // Assume this is where API logic is

class JobRepositoryImpl implements JobRepository {
  JobApi jobApi = JobApi();

  @override
  Future<List<JobModel>> getJobs() async {
    try {
      final jobList = await jobApi.fetchJobsFromApi();

      return jobList.map((jobData) => JobModel.fromModel(jobData)).toList();
    } catch (e) {
      throw Exception('Failed to fetch jobs');
    }
  }

  @override
  Future<JobDetailsModel> getJobDetails(String jobUUID) async {
    try {
      // API call to fetch job details
      final jobData = await jobApi.fetchJobDetailsFromApi(jobUUID);
      // Convert API response to domain entity
      print('jobData: $jobData');
      return JobDetailsModel.fromModel(jobData as JobDetailsModel);
    } catch (e) {
      throw Exception('Failed to fetch job details');
    }
  }
}
