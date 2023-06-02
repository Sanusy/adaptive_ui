import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveTextField extends StatelessWidget {
  final int? maxLines;
  final String? hint;
  final void Function(String) onChanged;

  const AdaptiveTextField({
    Key? key,
    required this.onChanged,
    this.maxLines,
    this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoTextField(
            placeholder: hint,
            textAlignVertical: TextAlignVertical.top,
            maxLines: maxLines,
            onChanged: onChanged,
          )
        : TextField(
            decoration: InputDecoration(hintText: hint),
            maxLines: maxLines,
            onChanged: onChanged,
          );
  }
}
