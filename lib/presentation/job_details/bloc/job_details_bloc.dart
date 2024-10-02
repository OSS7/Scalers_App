import 'package:bloc/bloc.dart';

import '../../../core/config/injectable_cofig.dart';
import '../../../data/models/job_details_model.dart';
import '../../../domain/repositories/job_repository.dart';
import '../../../domain/repositories/job_repository_impl.dart';

part 'job_details_event.dart';
part 'job_details_state.dart';

/// A BLoC that handles events related to job details.
///
/// It fetches job details from the [JobRepository] when the [FetchJobDetailsEvent]
/// is triggered.
JobDetailsBloc get jobDetailsBloc => getIt<JobDetailsBloc>();

class JobDetailsBloc extends Bloc<JobDetailsEvent, JobDetailsState> {
  /// The repository that provides the job details.
  final JobRepository repository = JobRepositoryImpl();

  /// The job details model that is fetched from the repository.
  JobDetailsModel? job;

  /// Creates a new [JobDetailsBloc].
  JobDetailsBloc() : super(JobDetailsInitial()) {
    on<FetchJobDetails>((event, emit) async {
      /// Emits the [JobDetailsLoading] state to indicate that the job details are being loaded.
      emit(JobDetailsLoading());

      try {
        /// Fetches the job details from the repository and emits the [JobDetailsLoaded] state.
        job = await repository.getJobDetails(event.jobUUId);
        emit(JobDetailsLoaded());
      } catch (e) {
        /// Emits the [JobDetailsError] state with an error message if the job details could not be loaded.
        emit(JobDetailsError('Failed to load job details'));
      }
    });
  }
}