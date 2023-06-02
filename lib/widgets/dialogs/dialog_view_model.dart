import 'package:flutter/foundation.dart';

class GeneralDialogViewModel {
  final String title;
  final String? content;
  final DialogActionViewModel onPositive;
  final DialogActionViewModel onNegative;

  GeneralDialogViewModel({
    required this.title,
    this.content,
    required this.onPositive,
    required this.onNegative,
  });
}

class DialogActionViewModel {
  final String actionTitle;
  final VoidCallback onClick;
  final bool inDestructive;

  DialogActionViewModel({
    required this.actionTitle,
    required this.onClick,
    this.inDestructive = false,
  });
}
