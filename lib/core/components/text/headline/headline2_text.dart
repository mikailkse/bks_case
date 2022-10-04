import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../init/theme/lightTheme/endavour_theme.dart';

class Headline2Text extends AutoSizeText {
  Headline2Text({
    Key? key,
    required String text,
    required Color color,
    TextAlign? textAlign,
    int? maxLines,
  }) : super(
          key: key,
          text,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 1,
          textAlign: textAlign,
          maxLines: maxLines,
          style: endeavourTheme.textTheme.headline2!.copyWith(
            color: color,
            fontWeight: endeavourTheme.textTheme.headline2!.fontWeight,
            fontFamily: endeavourTheme.textTheme.headline2!.fontFamily,
            fontSize: endeavourTheme.textTheme.headline2!.fontSize,
            fontStyle: endeavourTheme.textTheme.headline2!.fontStyle,
          ),
        );
}
