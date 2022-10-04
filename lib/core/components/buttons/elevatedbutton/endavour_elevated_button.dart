import 'package:flutter/material.dart';

import '../../../init/theme/lightTheme/endavour_theme.dart';

class EndeavourElevatedButton extends ElevatedButton {
  EndeavourElevatedButton({
    required void Function()? onPressed,
    required Widget? child,
    super.key,
  }) : super(
          onPressed: onPressed,
          child: child,
          style: endeavourTheme.elevatedButtonTheme.style,
        );
}
