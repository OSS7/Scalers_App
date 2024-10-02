import 'package:bloc/bloc.dart';
import 'package:scalers_test/data/models/job_model.dart';

import '../../../core/config/injectable_cofig.dart';
import '../../../domain/repositories/job_repository.dart';
import '../../../domain/repositories/job_repository_impl.dart';

part 'job_event.dart';
part 'job_state.dart';

/// A bloc that handles jobs-related events.
///
/// It fetches a list of jobs from the [JobRepository] when the [FetchJobsEvent]
/// is triggered.
///
JobBloc get jobBloc => getIt<JobBloc>();

class JobBloc extends Bloc<JobEvent, JobState> {
  /// The repository that the bloc uses to fetch jobs.
  final JobRepository repository = JobRepositoryImpl();

  /// The list of jobs that the bloc has fetched.
  List<JobModel> jobs = [];

  JobBloc() : super(JobInitial()) {
    on<FetchJobsEvent>(
      (event, emit) async {
        emit(JobLoading());
        try {
          /// Fetch the jobs from the repository and store them in [jobs].
          jobs = await repository.getJobs();

          emit(JobLoaded());
        } catch (e) {
          emit(JobError('Failed to load jobs'));
        }
      },
    );
  }
}
