import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../init/theme/lightTheme/endavour_theme.dart';

class ButtonLargeText extends AutoSizeText {
  ButtonLargeText({Key? key, required String text, required Color color})
      : super(
          key: key,
          text,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 1,
          style: endeavourTheme.textTheme.button!.copyWith(
            color: color,
            fontWeight: endeavourTheme.textTheme.button!.fontWeight,
            fontFamily: endeavourTheme.textTheme.button!.fontFamily,
            fontSize: endeavourTheme.textTheme.button!.fontSize,
            fontStyle: endeavourTheme.textTheme.button!.fontStyle,
          ),
        );
}
