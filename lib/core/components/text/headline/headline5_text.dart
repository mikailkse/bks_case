import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../init/theme/lightTheme/endavour_theme.dart';

class Headline5Text extends AutoSizeText {
  Headline5Text({Key? key, required String text, required Color color})
      : super(
          key: key,
          text,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 1,
          style: endeavourTheme.textTheme.headline5!.copyWith(
            color: color,
            fontWeight: endeavourTheme.textTheme.headline5!.fontWeight,
            fontFamily: endeavourTheme.textTheme.headline5!.fontFamily,
            fontSize: endeavourTheme.textTheme.headline5!.fontSize,
            fontStyle: endeavourTheme.textTheme.headline5!.fontStyle,
          ),
        );
}
