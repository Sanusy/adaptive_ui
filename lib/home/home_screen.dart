import 'dart:io';

import 'package:adaptive_ui/home/home_cubit.dart';
import 'package:adaptive_ui/home/home_state.dart';
import 'package:adaptive_ui/widgets/adaptive_button.dart';
import 'package:adaptive_ui/widgets/adaptive_list_tile.dart';
import 'package:adaptive_ui/widgets/adaptive_scaffold.dart';
import 'package:adaptive_ui/widgets/app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit()..loadNotes(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          final Widget body;
          if (state.isLoading) {
            body = const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else if (state.isError) {
            body = Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Something went wrong'),
                  const SizedBox(
                    height: 16,
                  ),
                  AdaptiveButton(
                    onClick: context.read<HomeCubit>().loadNotes,
                    child: const Text('Retry'),
                  )
                ],
              ),
            );
          } else if (state.notes.isEmpty) {
            body = Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('There is no notes'),
                  const SizedBox(
                    height: 16,
                  ),
                  AdaptiveButton(
                    onClick: context.read<HomeCubit>().onAddNote,
                    child: const Text('Add note'),
                  )
                ],
              ),
            );
          } else {
            body = ListView.builder(
              itemCount: state.notes.length,
              itemBuilder: (_, index) {
                final note = state.notes[index];
                return AdaptiveListTile(
                  title: note.noteTitle,
                  subtitle: note.noteSubtitle,
                  onClick: () {
                    context.read<HomeCubit>().onOpenNote(note);
                  },
                );
              },
            );
          }

          return AdaptiveScaffold(
            appBar: AdaptiveAppBar(
              title: 'Home',
              trailing: Platform.isIOS
                  ? GestureDetector(
                      onTap: context.read<HomeCubit>().onAddNote,
                      child: const Icon(CupertinoIcons.add),
                    )
                  : null,
            ),
            body: body,
            fab: Platform.isAndroid
                ? FloatingActionButton(
                    onPressed: context.read<HomeCubit>().onAddNote,
                    child: const Icon(Icons.add),
                  )
                : null,
          );
        },
      ),
    );
  }
}
