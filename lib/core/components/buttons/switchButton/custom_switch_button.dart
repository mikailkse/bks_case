import 'package:flutter/material.dart';

import '../../../constants/color/app_colors.dart';

class CustomSwitchButton extends Switch {
  CustomSwitchButton(
      {super.key, required bool value, required void Function(bool)? onChanged})
      : super(
          value: value,
          onChanged: onChanged,
          activeColor: AppColors.endeavour,
          inactiveTrackColor: Colors.grey.shade300,
        );
}
