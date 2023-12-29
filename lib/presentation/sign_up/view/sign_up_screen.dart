import 'package:flutter/material.dart';
import '../../presentation.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  static const String path = '/sign_up';
  static const String name = 'sign_up';
  @override
  Widget build(BuildContext context) {
    return const SignUpView();
  }
}
