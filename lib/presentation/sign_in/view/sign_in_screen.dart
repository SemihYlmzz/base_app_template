import 'package:flutter/material.dart';
import '../../presentation.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
  static const String path = '/sign_in';
  static const String name = 'sign_in';
  @override
  Widget build(BuildContext context) {
    return const SignInView();
  }
}
