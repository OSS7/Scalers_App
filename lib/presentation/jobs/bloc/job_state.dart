part of 'job_bloc.dart';

abstract class JobState {}

class JobInitial extends JobState {}

class JobLoading extends JobState {}

class JobLoaded extends JobState {}

class JobError extends JobState {
  final String message;
  JobError(this.message);
}
