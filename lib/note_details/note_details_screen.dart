import 'dart:io';

import 'package:adaptive_ui/navigation/go_router.dart';
import 'package:adaptive_ui/note_details/note_details_cubit.dart';
import 'package:adaptive_ui/note_details/note_details_state.dart';
import 'package:adaptive_ui/note_model.dart';
import 'package:adaptive_ui/widgets/adaptive_scaffold.dart';
import 'package:adaptive_ui/widgets/app_bar.dart';
import 'package:adaptive_ui/widgets/dialogs/dialog_view_model.dart';
import 'package:adaptive_ui/widgets/dialogs/widget_dialog_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteDetailsScreenData {
  final Note noteToShow;
  final VoidCallback onDelete;

  NoteDetailsScreenData(this.noteToShow, this.onDelete);
}

class NoteDetailsScreen extends StatelessWidget {
  final NoteDetailsScreenData noteDetailsScreenData;

  const NoteDetailsScreen({
    Key? key,
    required this.noteDetailsScreenData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          NoteDetailsCubit(noteToShow: noteDetailsScreenData.noteToShow),
      child: BlocConsumer<NoteDetailsCubit, NoteDetailsState>(
        listener: (context, state) {
          if (state.deleteNoteStatus == DeleteNoteStatus.failed) {
            showMessage(context, "Failed to delete note");
          } else if (state.deleteNoteStatus == DeleteNoteStatus.success) {
            noteDetailsScreenData.onDelete();
            goRouter.pop();
          }
        },
        builder: (context, state) {
          return AdaptiveScaffold(
            appBar: AdaptiveAppBar(
              title: 'Note details',
              trailing: Platform.isIOS
                  ? GestureDetector(
                      onTap: () {
                        showAdaptiveGeneralDialog(
                          context: context,
                          dialogViewModel: GeneralDialogViewModel(
                            title: 'Delete note',
                            content: 'Are you sure you want to delete note?',
                            onPositive: DialogActionViewModel(
                              actionTitle: 'Delete',
                              inDestructive: true,
                              onClick:
                                  context.read<NoteDetailsCubit>().onDeleteNote,
                            ),
                            onNegative: DialogActionViewModel(
                              actionTitle: 'Cancel',
                              inDestructive: false,
                              onClick: () {},
                            ),
                          ),
                        );
                      },
                      child: const Icon(CupertinoIcons.delete),
                    )
                  : IconButton(
                      onPressed: context.read<NoteDetailsCubit>().onDeleteNote,
                      icon: const Icon(
                        Icons.delete,
                      ),
                    ),
            ),
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    state.note.noteTitle,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    state.note.noteSubtitle,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
