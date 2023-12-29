import 'package:flutter/material.dart';
import '../../presentation.dart';

class MailVerificationScreen extends StatelessWidget {
  const MailVerificationScreen({super.key});
  static const String path = '/mail_verification';
  static const String name = 'mail_verification';
  @override
  Widget build(BuildContext context) {
    return const MailVerificationView();
  }
}
