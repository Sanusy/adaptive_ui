import 'package:adaptive_ui/settings/settings_cubit.dart';
import 'package:adaptive_ui/settings/settings_state.dart';
import 'package:adaptive_ui/widgets/adaptive_scaffold.dart';
import 'package:adaptive_ui/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return AdaptiveScaffold(
          appBar: AdaptiveAppBar(
            title: 'Settings',
          ),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text('Dark theme'),
                    const Spacer(),
                    Switch.adaptive(
                        value: state.isDarkTheme,
                        onChanged: (_) {
                          context.read<SettingsCubit>().onToggleTheme();
                        })
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
