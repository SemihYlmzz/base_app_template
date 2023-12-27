import 'package:base_app_template/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VersionsView extends StatelessWidget {
  const VersionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Versions'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {
                context.pushNamed(SettingsScreen.name);
              },
              icon: const Icon(
                Icons.settings,
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('L10n.current.sign_out'),
        ),
      ),
    );
  }
}
