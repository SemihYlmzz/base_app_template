import 'package:flutter/material.dart';

import 'widgets.dart';

class DarkModeSetting extends StatelessWidget {
  const DarkModeSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return const Setting(
      settingIconData: Icons.dark_mode,
      settingName: 'Dark Mode',
      settingWidget: SecondWidget(),
    );
  }
}

class SecondWidget extends StatefulWidget {
  const SecondWidget({Key? key}) : super(key: key);

  @override
  _SecondWidgetState createState() => _SecondWidgetState();
}

class _SecondWidgetState extends State<SecondWidget> {
  int selectedIndex = 0;
  List<String> items = [
    'Device Theme',
    'Light Theme',
    'Dark Theme',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      menuMaxHeight: 300,
      value: items[selectedIndex],
      items: items.map((String item) {
        return DropdownMenuItem<String>(
          value: item,
          child: Text(item),
        );
      }).toList(),
      onChanged: (String? value) {
        setState(() {
          selectedIndex = items.indexOf(value!);
        });
      },
    );
  }
}
