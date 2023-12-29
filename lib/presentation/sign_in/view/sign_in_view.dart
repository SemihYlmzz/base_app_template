import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sign In'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextField(),
                const SizedBox(height: 16),
                const TextField(),
                const SizedBox(height: 32),
                ElevatedButton(onPressed: () {}, child: const Text('Sign In')),
                const SizedBox(height: 32),
                TextButton(
                  onPressed: () {},
                  child: const Text('Forgot Password'),
                ),
                const SizedBox(height: 8),
                TextButton(onPressed: () {}, child: const Text('Sign Up Now!')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
