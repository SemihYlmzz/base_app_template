import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignUp'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('SignUp Button'),
        ),
      ),
    );
  }
}
