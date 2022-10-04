import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../init/theme/lightTheme/endavour_theme.dart';

class Headline3Text extends AutoSizeText {
  Headline3Text({Key? key, required String text, required Color color})
      : super(
          key: key,
          text,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 1,
          style: endeavourTheme.textTheme.headline3!.copyWith(
            color: color,
            fontWeight: endeavourTheme.textTheme.headline3!.fontWeight,
            fontFamily: endeavourTheme.textTheme.headline3!.fontFamily,
            fontSize: endeavourTheme.textTheme.headline3!.fontSize,
            fontStyle: endeavourTheme.textTheme.headline3!.fontStyle,
          ),
        );
}
