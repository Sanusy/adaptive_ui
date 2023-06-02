import 'dart:io';

import 'package:adaptive_ui/navigation/go_router.dart';
import 'package:adaptive_ui/widgets/dialogs/dialog_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension WidgetDialogExtension on Widget {
  void showAdaptiveGeneralDialog({
    required BuildContext context,
    required GeneralDialogViewModel dialogViewModel,
  }) {
    if (Platform.isIOS) {
      showCupertinoDialog(
        context: context,
        builder: (_) {
          return CupertinoAlertDialog(
            title: Text(dialogViewModel.title),
            content: dialogViewModel.content != null
                ? Text(dialogViewModel.content!)
                : null,
            actions: [
              CupertinoDialogAction(
                isDestructiveAction: dialogViewModel.onNegative.inDestructive,
                onPressed: () {
                  dialogViewModel.onNegative.onClick();
                  goRouter.pop();
                },
                child: Text(dialogViewModel.onNegative.actionTitle),
              ),
              CupertinoDialogAction(
                isDestructiveAction: dialogViewModel.onPositive.inDestructive,
                onPressed: () {
                  dialogViewModel.onPositive.onClick();
                  goRouter.pop();
                },
                child: Text(dialogViewModel.onPositive.actionTitle),
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text(dialogViewModel.title),
            content: dialogViewModel.content != null
                ? Text(dialogViewModel.content!)
                : null,
            actions: [
              TextButton(
                onPressed: () {
                  dialogViewModel.onNegative.onClick();
                  goRouter.pop();
                },
                child: Text(
                  dialogViewModel.onNegative.actionTitle,
                  style: dialogViewModel.onNegative.inDestructive
                      ? const TextStyle(color: Colors.red)
                      : null,
                ),
              ),
              TextButton(
                onPressed: () {
                  dialogViewModel.onPositive.onClick();
                  goRouter.pop();
                },
                child: Text(
                  dialogViewModel.onPositive.actionTitle,
                  style: dialogViewModel.onPositive.inDestructive
                      ? const TextStyle(color: Colors.red)
                      : null,
                ),
              ),
            ],
          );
        },
      );
    }
  }

  void showMessage(
    BuildContext context,
    String message,
  ) {
    if (Platform.isIOS) {
      showCupertinoDialog(
        context: context,
        builder: (_) {
          return CupertinoAlertDialog(
            content: Text(message),
            actions: [
              CupertinoDialogAction(
                onPressed: () {
                  goRouter.pop();
                },
                child: const Text('Got it'),
              ),
            ],
          );
        },
      );
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(message)));
    }
  }
}
