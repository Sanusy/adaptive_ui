import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum BottomNavigationTabs {
  home,
  settings,
}

extension BottomNavigationTabsExtension on BottomNavigationTabs {
  IconData get icon {
    switch (this) {
      case BottomNavigationTabs.home:
        return Platform.isIOS ? CupertinoIcons.home : Icons.home;
      case BottomNavigationTabs.settings:
        return Platform.isIOS ? CupertinoIcons.settings : Icons.settings;
    }
  }

  String get tabTitle {
    switch (this) {
      case BottomNavigationTabs.home:
        return 'Home';
      case BottomNavigationTabs.settings:
        return 'Settings';
    }
  }

  String get routePath {
    switch (this) {
      case BottomNavigationTabs.home:
        return '/home';
      case BottomNavigationTabs.settings:
        return '/settings';
    }
  }
}
