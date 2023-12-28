import 'package:get_it/get_it.dart';
import '../app/cubit/cubit.dart';
import '../app/gen/l10n/l10n.dart';

final getIt = GetIt.instance;

class InjectionContainer {
  static Future<void> initializeDependencies() async {
    getIt
      // //! External
      // //
      // // -- Internet Connection Checker
      // ..registerLazySingleton<InternetConnectionChecker>(
      //   InternetConnectionChecker.new,
      // )
      // // -- Localization
      ..registerSingleton<L10n>(L10n())
      // //! CORE
      // //
      // // -- Network Info
      // ..registerLazySingleton<NetworkService>(
      //   () => NetworkInfoImpl(getIt<InternetConnectionChecker>()),
      // )
      //! CUBITS
      ..registerLazySingleton<DevicePrefsCubit>(DevicePrefsCubit.new);
  
    // //! Cubits initializings
    // await getIt<PermissionCubit>().initPermissionStatus();

    // //! BLOCS OF REPOSITORIES
    // //
    // // -- Auth
    // await AuthRepositoryInjection.inject();
    // AuthBlocInjection.inject();
    // // -- User
    // await UserRepositoryInjection.inject();
    // UserBlocInjection.inject();
    // // -- Storage
    // await StorageRepositoryInjection.inject();
    // StorageBlocInjection.inject();
  }
}
