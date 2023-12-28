import 'package:base_app_template/app/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VibrationPreferenceSwitch extends StatelessWidget {
  const VibrationPreferenceSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final canVibrate = context.select<DevicePrefsCubit, bool>(
      (value) => value.state.canVibrate,
    );
    return Switch.adaptive(
      value: canVibrate,
      onChanged: (newValue) {
        context.read<DevicePrefsCubit>().updateCanVibrate(newValue);
      },
    );
  }
}
