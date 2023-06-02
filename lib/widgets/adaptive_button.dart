import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onClick;

  const AdaptiveButton({
    Key? key,
    required this.child,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(onPressed: onClick, child: child)
        : MaterialButton(
            onPressed: onClick,
            child: child,
          );
  }
}
