import 'package:flutter/material.dart';

import 'widgets.dart';

class LanguageSetting extends StatelessWidget {
  const LanguageSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return const Setting(
      settingIconData: Icons.language,
      settingName: 'Language',
      settingWidget: NewWidget(),
    );
  }
}

class NewWidget extends StatefulWidget {
  const NewWidget({Key? key}) : super(key: key);

  @override
  _NewWidgetState createState() => _NewWidgetState();
}

class _NewWidgetState extends State<NewWidget> {
  int selectedIndex = 0;
  List<String> items = [
    'Device Language',
    'English',
    'Türkçe',
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
