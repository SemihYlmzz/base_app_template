import 'package:flutter/material.dart';

class MailVerificationView extends StatelessWidget {
  const MailVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MailVerification'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('MailVerification Button'),
        ),
      ),
    );
  }
}
