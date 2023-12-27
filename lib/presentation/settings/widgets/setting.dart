
import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({
    required this.settingName,
    required this.settingIconData,
    required this.settingWidget,
    super.key,
  });
  final String settingName;
  final IconData settingIconData;
  final Widget settingWidget;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const SizedBox(width: 4),
            Icon(
              settingIconData,
              size: 30,
            ),
            const SizedBox(width: 12),
            Text(settingName),
          ],
        ),
        Flexible(
            child: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: SizedBox(
            width: 300,
            child: Align(
              alignment: Alignment.centerRight,
              child: settingWidget,
            ),
          ),
        )),
      ],
    );
  }
}
