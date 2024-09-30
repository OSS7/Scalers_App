part of 'job_details_bloc.dart';

sealed class JobDetailsState {}

class JobDetailsInitial extends JobDetailsState {}

class JobDetailsLoading extends JobDetailsState {}

class JobDetailsLoaded extends JobDetailsState {}

class JobDetailsError extends JobDetailsState {
  final String message;

  JobDetailsError(this.message);
}
