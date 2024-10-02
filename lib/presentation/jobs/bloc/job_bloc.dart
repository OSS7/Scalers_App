import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:scalers_test/data/models/job_model.dart';

import '../../../core/config/injectable_cofig.dart';
import '../../../domain/repositories/job_repository.dart';
import '../../../domain/repositories/job_repository_impl.dart';

part 'job_event.dart';
part 'job_state.dart';

JobBloc get jobBloc => getIt<JobBloc>();

class JobBloc extends Bloc<JobEvent, JobState> {
  JobRepository repository = JobRepositoryImpl();
  List<JobModel> jobs = [];

  JobBloc() : super(JobInitial()) {
    on<FetchJobsEvent>(
      (event, emit) async {
        emit(JobLoading());
        try {
          jobs = await repository.getJobs();

          emit(JobLoaded());
        } catch (e) {
          emit(JobError('Failed to load jobs'));
        }
      },
    );
  }
}
