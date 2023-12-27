import 'package:flutter/material.dart';

class PubDevView extends StatelessWidget {
  const PubDevView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pub Dev'),
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
