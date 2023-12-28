import 'package:base_app_template/initialize/injection_container.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';

import 'app_bloc_observer.dart';

abstract final class AppInitializer {
  static Future<void> initialize() async {
    // Configure Logger
    if (kReleaseMode) {
      Logger.root.level = Level.WARNING;
    }
    // Print Logger Activities
    Logger.root.onRecord.listen((record) {
      debugPrint('LOGGER ${record.level.name}: ${record.time}: '
          '${record.loggerName}: '
          '${record.message}');
    });

    // Initialize Bloc Observer
    Bloc.observer = AppBlocObserver();

    // Initialize Screen Orientation Configs
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);


    await InjectionContainer.initializeDependencies();
  }
}
