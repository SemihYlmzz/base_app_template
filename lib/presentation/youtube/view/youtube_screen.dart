import 'package:flutter/material.dart';
import '../../presentation.dart';

class YoutubeScreen extends StatelessWidget {
  const YoutubeScreen({super.key});
  static const String path = '/youtube';
  static const String name = 'youtube';

  @override
  Widget build(BuildContext context) {
    return const YoutubeView();
  }
}
