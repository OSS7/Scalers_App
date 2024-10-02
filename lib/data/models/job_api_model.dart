import 'package:http/http.dart' as http;
import 'dart:convert';

import 'job_details_model.dart';
import 'job_model.dart';

class JobApi {
  final String baseUrl = "https://mpa0771a40ef48fcdfb7.free.beeceptor.com";

  Future<List<JobModel>> fetchJobsFromApi() async {
    final response = await http.get(Uri.parse('$baseUrl/jobs'));

    if (response.statusCode == 200) {
      final List<dynamic> jobList = json.decode(response.body)['data'];
      return jobList.map((job) => JobModel.fromJson(job)).toList();
    } else {
      throw Exception('Failed to load jobs');
    }
  }

  Future<JobDetailsModel> fetchJobDetailsFromApi(String jobUUID) async {
    final response = await http.get(Uri.parse('$baseUrl/jobs/$jobUUID'));

    if (response.statusCode == 200) {
      return JobDetailsModel.fromJson(json.decode(response.body)['data']);
    } else {
      throw Exception('Failed to load job details');
    }
  }
}
