import 'package:adaptive_ui/bottom_navigation/bottom_navigation_tabs.dart';
import 'package:adaptive_ui/navigation/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavigationCubit extends Cubit<void> {
  BottomNavigationCubit() : super(BottomNavigationTabs.home.index);

  void onSelectTab(BottomNavigationTabs selectedTab) {
    goRouter.go(selectedTab.routePath);
  }
}
