import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/cubit/cubit.dart';
import '../../../app/gen/l10n/l10n.dart';
import '../../../initialize/injection_container.dart';

class PubDevView extends StatelessWidget {
  const PubDevView({super.key});

  @override
  Widget build(BuildContext context) {
    context.select<DevicePrefsCubit, AppLanguages>(
      (value) => value.state.appLanguage,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(getIt<L10n>().pub_dev),
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
