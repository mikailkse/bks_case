import '../../../core/init/navigation/navigation_service.dart';
import '../../auth/login/view/login_view.dart';
import 'package:flutter/material.dart';

import '../../../core/components/appbar/settings_appbar.dart';
import '../../../core/components/buttons/elevatedbutton/endavour_elevated_button.dart';
import '../../../core/components/text/button/button_small_text.dart';
import '../../../core/constants/color/app_colors.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SettingsAppbar(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            EndeavourElevatedButton(
              onPressed: () => NavigationService.instance
                  .navigateToPageClear(path: LoginView.routeName),
              child: ButtonSmallText(
                text: 'Çıkış Yap',
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
