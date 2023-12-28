import 'package:base_app_template/app/cubit/cubit.dart';
import 'package:base_app_template/app/router/app_router.dart';
import 'package:base_app_template/initialize/injection_container.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        )
      ],
      child: BlocBuilder<DevicePrefsCubit, DevicePrefsState>(
        builder: (context, devicePrefsState) {

          ThemeData? appTheme = switch (devicePrefsState.appTheme) {
            AppTheme.deviceTheme => null,
            AppTheme.lightTheme => ThemeData.light(),
            AppTheme.darkTheme => ThemeData.dark(),
          };
          
          appTheme ??= getDeviceTheme();

          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: appTheme,
            routerConfig: router,
          );
        },
      ),
    );
  }

  ThemeData getDeviceTheme() {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    if (isDarkMode) {
      return ThemeData.dark();
    } else {
      return ThemeData.light();
    }
  }
}
