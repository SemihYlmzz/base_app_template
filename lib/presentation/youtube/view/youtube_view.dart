import 'package:flutter/material.dart';

class YoutubeView extends StatelessWidget {
  const YoutubeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Youtube'),
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
