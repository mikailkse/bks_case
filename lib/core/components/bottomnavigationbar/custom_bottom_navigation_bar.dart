import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../view/_bottombar/viewmodel/app_bottom_bar.dart';
import '../../constants/color/app_colors.dart';

class CustomBottomNavigationBar extends BottomNavigationBar {
  CustomBottomNavigationBar({super.key, required BuildContext context})
      : super(
          showSelectedLabels: false,
          selectedFontSize: 0,
          showUnselectedLabels: false,
          currentIndex: context.read<AppBottomBarViewModel>().selectedIndex,
          onTap: context.read<AppBottomBarViewModel>().onItemTapped,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
                color: context.read<AppBottomBarViewModel>().selectedIndex == 0
                    ? AppColors.endeavour
                    : AppColors.gunPowder,
              ),
              label: 'Anasayfa',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 30,
                color: context.read<AppBottomBarViewModel>().selectedIndex == 1
                    ? AppColors.endeavour
                    : AppColors.gunPowder,
              ),
              label: 'Hesap Detay',
            ),
          ],
        );
}
