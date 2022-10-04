import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../init/theme/lightTheme/endavour_theme.dart';

class Headline4Text extends AutoSizeText {
  Headline4Text({Key? key, required String text, required Color color})
      : super(
          key: key,
          text,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 1,
          style: endeavourTheme.textTheme.headline4!.copyWith(
            color: color,
            fontWeight: endeavourTheme.textTheme.headline4!.fontWeight,
            fontFamily: endeavourTheme.textTheme.headline4!.fontFamily,
            fontSize: endeavourTheme.textTheme.headline4!.fontSize,
            fontStyle: endeavourTheme.textTheme.headline4!.fontStyle,
          ),
        );
}
