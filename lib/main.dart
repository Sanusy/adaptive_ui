import 'dart:io';

import 'package:adaptive_ui/navigation/go_router.dart';
import 'package:adaptive_ui/notes_service/notes_service.dart';
import 'package:adaptive_ui/settings/settings_cubit.dart';
import 'package:adaptive_ui/settings/settings_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final notesService = NotesService();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await notesService.open();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SettingsCubit(),
      child: BlocBuilder<SettingsCubit, SettingsState>(
          builder: (context, state) => Platform.isIOS
              ? CupertinoApp.router(
                  theme: CupertinoThemeData(
                    brightness:
                        state.isDarkTheme ? Brightness.dark : Brightness.light,
                  ),
                  routerConfig: goRouter,
                )
              : MaterialApp.router(
                  theme:
                      state.isDarkTheme ? ThemeData.dark() : ThemeData.light(),
                  routerConfig: goRouter,
                )),
    );
  }
}
