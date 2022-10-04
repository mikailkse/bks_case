import 'dart:async';

import 'package:bks_case/core/components/flushbar/custom_flushbar.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/enums/locale_keys_enum.dart';
import '../../../core/init/cache/locale_manager.dart';

class ProductDetailViewModel extends ChangeNotifier {
  getSwitch() async {
    lambOnOffSwithValue = await buildIsLambOnOffSwitch();
    notifyListeners();
  }

  Timer? debounce;

  onEndNotification(double value, BuildContext context) {
    if (debounce?.isActive ?? false) {
      debounce?.cancel();
    }
    debounce = Timer(const Duration(milliseconds: 600), () {
      showFlushbarWidget('Fırınınız ${value.round()} dereceye ayarlandı.')
          .show(context);
    });
  }

  // SLİDER

  int sliderCount = 0;

  sliderChanged(double value) {
    sliderCount = value.round();
    notifyListeners();
  }

  // SLİDER

  // ON OFF

  bool lambOnOffSwithValue = false;

  Future buildIsLambOnOff(bool value, BuildContext context) async {
    if (lambOnOffSwithValue == false) {
      buildIsLambOnOffSaveSwitch(value);
      lambOnOffSwithValue = true;
      showFlushbarWidget('Lamba Açıldı').show(context);
    } else {
      buildIsLambOnOffSaveSwitch(value);
      lambOnOffSwithValue = false;
      showFlushbarWidget('Lamba Kapandı').show(context);
    }
    notifyListeners();
  }

  buildIsLambOnOffSwitch() async {
    final localeManager = await LocaleManager.instance();
    bool isSwitchedFT = localeManager.getBoolValue(PreferencesKeys.ONOFFSWITCH);
    return isSwitchedFT;
  }

  buildIsLambOnOffSaveSwitch(bool value) async {
    final localeManager = await LocaleManager.instance();
    localeManager.setBoolValue(PreferencesKeys.ONOFFSWITCH, value);
    return localeManager.setBoolValue(PreferencesKeys.ONOFFSWITCH, value);
  }

  // ON OFF

  @override
  void dispose() {
    debounce?.cancel();
    super.dispose();
  }
}
