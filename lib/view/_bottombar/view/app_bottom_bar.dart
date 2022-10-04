import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/components/bottomnavigationbar/custom_bottom_navigation_bar.dart';
import '../../../core/components/container/black_container.dart';
import '../../home/view/home_view.dart';
import '../../settings/view/settings_view.dart';
import '../viewmodel/app_bottom_bar.dart';

class AppBottomBar extends StatelessWidget {
  static const routeName = 'appBottomBarView';
  const AppBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BlackContainer(
        child: CustomBottomNavigationBar(context: context),
      ),
      body: screens[context.watch<AppBottomBarViewModel>().selectedIndex],
    );
  }
}

List screens = [
  const HomeView(),
  const SettingsView(),
];
