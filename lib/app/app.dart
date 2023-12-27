import 'package:base_app_template/app/router/app_router.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: (isDarkMode) ? ThemeData.dark() : ThemeData.light(),
      routerConfig: router,
    );
  }
}
