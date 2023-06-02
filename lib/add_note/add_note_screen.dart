import 'package:adaptive_ui/add_note/add_note_cubit.dart';
import 'package:adaptive_ui/add_note/add_note_state.dart';
import 'package:adaptive_ui/navigation/go_router.dart';
import 'package:adaptive_ui/widgets/adaptive_button.dart';
import 'package:adaptive_ui/widgets/adaptive_scaffold.dart';
import 'package:adaptive_ui/widgets/adaptive_text_field.dart';
import 'package:adaptive_ui/widgets/app_bar.dart';
import 'package:adaptive_ui/widgets/dialogs/dialog_view_model.dart';
import 'package:adaptive_ui/widgets/dialogs/widget_dialog_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNoteScreen extends StatelessWidget {
  final VoidCallback onAdd;

  const AddNoteScreen({
    Key? key,
    required this.onAdd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state.addNoteStatus == AddNoteStatus.failed) {
            showMessage(context, 'Failed to add note');
          } else if (state.addNoteStatus == AddNoteStatus.success) {
            onAdd();
            goRouter.pop();
          }
        },
        builder: (context, state) {
          return WillPopScope(
            onWillPop: () async {
              if (state.isNotEmpty) {
                showAdaptiveGeneralDialog(
                  context: context,
                  dialogViewModel: GeneralDialogViewModel(
                    title: 'Quit without saving?',
                    content: "If you will leave, note won't be saved",
                    onPositive: DialogActionViewModel(
                      actionTitle: 'Leave',
                      inDestructive: true,
                      onClick: () {
                        goRouter.pop();
                      },
                    ),
                    onNegative: DialogActionViewModel(
                      actionTitle: 'Stay',
                      onClick: () {},
                    ),
                  ),
                );
                return false;
              }
              return true;
            },
            child: AdaptiveScaffold(
              appBar: AdaptiveAppBar(
                title: 'Add note',
              ),
              body: state.isLoading
                  ? const Center(
                      child: CircularProgressIndicator.adaptive(),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(16),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Column(
                            children: [
                              AdaptiveTextField(
                                onChanged:
                                    context.read<AddNoteCubit>().onTitleChanged,
                                maxLines: 1,
                                hint: 'Title',
                              ),
                              const SizedBox(height: 16),
                              SizedBox(
                                height: 300,
                                child: AdaptiveTextField(
                                  hint: 'Description',
                                  onChanged: context
                                      .read<AddNoteCubit>()
                                      .onSubTitleChanged,
                                  maxLines: null,
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                          AdaptiveButton(
                            onClick: state.isFilled
                                ? context.read<AddNoteCubit>().onAddNote
                                : null,
                            child: const Text('Add note'),
                          )
                        ],
                      ),
                    ),
            ),
          );
        },
      ),
    );
  }
}
