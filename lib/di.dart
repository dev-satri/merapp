import 'package:get_it/get_it.dart';
import 'package:meroapp/src/core/services/firebase/firebase_services.dart';
import 'package:meroapp/src/features/auth/presentation/blocs/login_bloc/login_bloc.dart';
import 'package:meroapp/src/features/auth/presentation/blocs/register_bloc/register_bloc.dart';

final getIt = GetIt.instance;

void initDependencies() {
  blocs();
  usecases();
}

void usecases() {
  getIt.registerLazySingleton<FirebaseServices>(
    () => FirebaseServices(),
  );
}

void blocs() {
  getIt.registerLazySingleton<LoginBloc>(() => LoginBloc(getIt()));
  getIt.registerLazySingleton<RegisterBloc>(() => RegisterBloc());
}
