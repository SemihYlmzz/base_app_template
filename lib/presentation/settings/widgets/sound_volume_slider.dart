import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/cubit/cubit.dart';

class SoundVolumeSlider extends StatelessWidget {
  const SoundVolumeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final soundVolume = context.select<DevicePrefsCubit, double>(
      (value) => value.state.soundVolume,
    );
    return Slider.adaptive(
      value: soundVolume,
      onChanged: (double newValue) {
        context.read<DevicePrefsCubit>().updateSoundVolume(newValue);
      },
    );
  }
}
