import '../model/login_dummy_model.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/flushbar/custom_flushbar.dart';
import '../../../../core/init/navigation/navigation_service.dart';
import '../../../_bottombar/view/app_bottom_bar.dart';

class LoginViewModel extends ChangeNotifier {
  GlobalKey<FormState> formState = GlobalKey();

  bool isLockOpen = true;

  void isLockStateChange() {
    isLockOpen = !isLockOpen;
    notifyListeners();
  }

  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();

  List<LoginDummyModel>? loginModel = ProductDummy.login;

  loginCheck(BuildContext context) {
    if (formState.currentState!.validate()) {
      LoginDummyModel(
        email: loginEmailController.text,
        password: loginPasswordController.text,
      );
      if (loginEmailController.text == 'mikail@gmail.com' &&
          loginPasswordController.text == '123456') {
        NavigationService.instance
            .navigateToPageClear(path: AppBottomBar.routeName);
        showFlushbarWidget('Giriş başarılı hoşgeldiniz!').show(context);
      } else {
        showFlushbarWidget('Lütfen eksik bilgeri doldurdunuz!').show(context);
      }
    }
  }
}
