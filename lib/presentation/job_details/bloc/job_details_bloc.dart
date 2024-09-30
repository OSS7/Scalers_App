import 'package:bloc/bloc.dart';

import '../../../core/config/injectable_cofig.dart';
import '../../../data/models/job_details_model.dart';
import '../../../domain/repositories/job_repository.dart';
import '../../../domain/repositories/job_repository_impl.dart';

part 'job_details_event.dart';
part 'job_details_state.dart';

JobDetailsBloc get jobDetailsBloc => getIt<JobDetailsBloc>();

class JobDetailsBloc extends Bloc<JobDetailsEvent, JobDetailsState> {
  JobRepository repository = JobRepositoryImpl();
  JobDetailsModel? job;

  JobDetailsBloc() : super(JobDetailsInitial()) {
    on<FetchJobDetails>((event, emit) async {
      emit(JobDetailsLoading());
      try {
        job = await repository.getJobDetails(event.jobUUId);
        emit(JobDetailsLoaded());
      } catch (e) {
        emit(JobDetailsError('Failed to load job details'));
      }
    });
  }
}
