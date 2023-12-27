import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
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
