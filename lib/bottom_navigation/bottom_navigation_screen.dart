import 'dart:io';

import 'package:adaptive_ui/bottom_navigation/bottom_navigation_cubit.dart';
import 'package:adaptive_ui/bottom_navigation/bottom_navigation_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavigationScreen extends StatelessWidget {
  final BottomNavigationTabs currentTab;
  final Widget currentScreen;

  const BottomNavigationScreen({
    Key? key,
    required this.currentTab,
    required this.currentScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BottomNavigationCubit(),
      child: BlocBuilder<BottomNavigationCubit, void>(
        builder: (context, __) => Platform.isIOS
            ? CupertinoTabScaffold(
                tabBar: CupertinoTabBar(
                    currentIndex: currentTab.index,
                    onTap: (index) {
                      context
                          .read<BottomNavigationCubit>()
                          .onSelectTab(BottomNavigationTabs.values[index]);
                    },
                    items: BottomNavigationTabs.values
                        .map(
                          (tab) => BottomNavigationBarItem(
                            icon: Icon(tab.icon),
                            label: tab.tabTitle,
                          ),
                        )
                        .toList()),
                tabBuilder: (_, __) => currentScreen)
            : Scaffold(
                body: currentScreen,
                bottomNavigationBar: NavigationBar(
                  selectedIndex: currentTab.index,
                  onDestinationSelected: (index) {
                    context
                        .read<BottomNavigationCubit>()
                        .onSelectTab(BottomNavigationTabs.values[index]);
                  },
                  destinations: BottomNavigationTabs.values
                      .map(
                        (tab) => NavigationDestination(
                          icon: Icon(tab.icon),
                          label: tab.tabTitle,
                        ),
                      )
                      .toList(),
                ),
              ),
      ),
    );
  }
}
