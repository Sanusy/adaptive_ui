import 'package:adaptive_ui/add_note/add_note_screen.dart';
import 'package:adaptive_ui/bottom_navigation/bottom_navigation_screen.dart';
import 'package:adaptive_ui/bottom_navigation/bottom_navigation_tabs.dart';
import 'package:adaptive_ui/home/home_screen.dart';
import 'package:adaptive_ui/note_details/note_details_screen.dart';
import 'package:adaptive_ui/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final goRouter = GoRouter(initialLocation: '/home', routes: [
  ShellRoute(
    builder: (_, state, currentScreen) {
      return BottomNavigationScreen(
        currentTab: _bottomNavigationTab(),
        currentScreen: currentScreen,
      );
    },
    routes: [
      GoRoute(
        path: '/home',
        builder: (_, __) => const HomeScreen(),
        routes: [
          GoRoute(
            path: 'addNote',
            builder: (_, state) => AddNoteScreen(
              onAdd: state.extra as VoidCallback,
            ),
          ),
          GoRoute(
            path: 'noteDetails',
            builder: (_, state) => NoteDetailsScreen(
              noteDetailsScreenData: (state.extra as NoteDetailsScreenData),
            ),
          ),
        ],
      ),
      GoRoute(
        path: '/settings',
        builder: (_, __) => const SettingsScreen(),
      ),
    ],
  ),
]);

BottomNavigationTabs _bottomNavigationTab() {
  final location = goRouter.location;

  if (location.startsWith('/home')) {
    return BottomNavigationTabs.home;
  }

  return BottomNavigationTabs.settings;
}
