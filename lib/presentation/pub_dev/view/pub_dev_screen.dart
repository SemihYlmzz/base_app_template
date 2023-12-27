import 'package:flutter/material.dart';
import '../../presentation.dart';

class PubDevScreen extends StatelessWidget {
  const PubDevScreen({super.key});
  static const String path = '/pub_dev';
  static const String name = 'pub_dev';

  @override
  Widget build(BuildContext context) {
    return const PubDevView();
  }
}
