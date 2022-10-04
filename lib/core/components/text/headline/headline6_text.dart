import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../init/theme/lightTheme/endavour_theme.dart';

class Headline6Text extends AutoSizeText {
  Headline6Text({Key? key, required String text, required Color color})
      : super(
          key: key,
          text,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 1,
          style: endeavourTheme.textTheme.headline6!.copyWith(
            color: color,
            fontWeight: endeavourTheme.textTheme.headline6!.fontWeight,
            fontFamily: endeavourTheme.textTheme.headline6!.fontFamily,
            fontSize: endeavourTheme.textTheme.headline6!.fontSize,
            fontStyle: endeavourTheme.textTheme.headline6!.fontStyle,
          ),
        );
}
