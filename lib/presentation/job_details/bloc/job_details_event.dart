part of 'job_details_bloc.dart';

sealed class JobDetailsEvent {}

class FetchJobDetails extends JobDetailsEvent {
  final String jobUUId;

  FetchJobDetails(this.jobUUId);
}
