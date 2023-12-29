import 'package:base_app_template/app/cubit/cubit.dart';
import 'package:base_app_template/app/router/app_router.dart';
import 'package:base_app_template/initialize/injection_container.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'gen/l10n/l10n.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with RouterMixin {
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      debugInvertOversizedImages = true;
    }

    return MultiBlocProvider(
      providers: [
        BlocProvider<DevicePrefsCubit>(
          create: (context) => getIt<DevicePrefsCubit>(),
        ),
      ],
      child: BlocBuilder<DevicePrefsCubit, DevicePrefsState>(
        builder: (context, devicePrefsState) {
          var appTheme = switch (devicePrefsState.appTheme) {
            AppTheme.deviceTheme => null,
            AppTheme.lightTheme => ThemeData.light(),
            AppTheme.darkTheme => ThemeData.dark(),
          };

          appTheme ??= getDeviceTheme();

          final currentLanguageCode = switch (
              context.read<DevicePrefsCubit>().getCurrentAppLanguageCode()) {
            'en' => const Locale('en'),
            'tr' => const Locale('tr'),
            _ => const Locale('en'),
          };

          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            // App Theme
            theme: appTheme,

            // Localization
            supportedLocales: L10n.delegate.supportedLocales,
            localizationsDelegates: const [
              L10n.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            locale: currentLanguageCode,

            // Router
            routerConfig: router,
          );
        },
      ),
    );
  }

  ThemeData getDeviceTheme() {
    final brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    if (isDarkMode) {
      return ThemeData.dark();
    } else {
      return ThemeData.light();
    }
  }
}
