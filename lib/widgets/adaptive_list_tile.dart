import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onClick;

  const AdaptiveListTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoListTile(
            title: Text(title),
            subtitle: Text(subtitle),
            onTap: onClick,
          )
        : ListTile(
            title: Text(title),
            subtitle: Text(subtitle),
            onTap: onClick,
          );
  }
}
