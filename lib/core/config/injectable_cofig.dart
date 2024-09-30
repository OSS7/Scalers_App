import 'package:get_it/get_it.dart';

import '../../presentation/job_details/bloc/job_details_bloc.dart';
import '../../presentation/jobs/bloc/job_bloc.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  getIt.registerLazySingleton(() => JobBloc());
  getIt.registerLazySingleton(() => JobDetailsBloc());
}
