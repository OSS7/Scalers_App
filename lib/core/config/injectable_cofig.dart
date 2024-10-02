import 'package:get_it/get_it.dart';

import '../../presentation/job_details/bloc/job_details_bloc.dart';
import '../../presentation/jobs/bloc/job_bloc.dart';

/// A global instance of the [GetIt] service locator.
final getIt = GetIt.instance;

/// Registers all the dependencies required by the app.
///
/// This should be called before the app is run.
void configureDependencies() {
  // Register the jobs BLoC.
  getIt.registerLazySingleton<JobBloc>(() => JobBloc());

  // Register the job details BLoC.
  getIt.registerLazySingleton<JobDetailsBloc>(() => JobDetailsBloc());
}