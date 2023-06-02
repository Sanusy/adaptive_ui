import 'dart:io';

import 'package:adaptive_ui/widgets/app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveScaffold extends StatelessWidget {
  final Widget body;
  final AdaptiveAppBar? appBar;
  final Widget? fab;

  const AdaptiveScaffold({
    Key? key,
    required this.body,
    this.appBar,
    this.fab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      assert(fab == null);

      return CupertinoPageScaffold(
        navigationBar: appBar != null
            ? CupertinoNavigationBar(
                middle: Text(appBar!.title),
                trailing: appBar?.trailing,
              )
            : null,
        child: SafeArea(child: body),
      );
    }
    return Scaffold(
      appBar: appBar != null
          ? AppBar(
              title: Text(appBar!.title),
              actions: appBar?.trailing != null
                  ? [
                      appBar!.trailing!,
                    ]
                  : null,
            )
          : null,
      body: body,
      floatingActionButton: fab,
    );
  }
}
