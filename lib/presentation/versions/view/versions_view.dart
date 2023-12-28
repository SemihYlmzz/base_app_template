import 'package:base_app_template/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/cubit/cubit.dart';
import '../../../app/gen/l10n/l10n.dart';
import '../../../initialize/injection_container.dart';

class VersionsView extends StatelessWidget {
  const VersionsView({super.key});

  @override
  Widget build(BuildContext context) {  context.select<DevicePrefsCubit, AppLanguages>(
      (value) => value.state.appLanguage,
    );
    return Scaffold(
      appBar: AppBar(
        title:  Text(getIt<L10n>().versions),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {
                context.pushNamed(SettingsScreen.name);
              },
              icon: const Icon(
                Icons.settings,
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('L10n.current.sign_out'),
        ),
      ),
    );
  }
}
