import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../init/theme/lightTheme/endavour_theme.dart';

class BodyMediumText extends AutoSizeText {
  BodyMediumText({
    Key? key,
    required String text,
    required Color color,
    int? maxLines,
    TextAlign? textAlign,
    TextOverflow? overflow,
  }) : super(
          key: key,
          text,
          overflow: overflow,
          textScaleFactor: 1,
          textAlign: textAlign,
          maxLines: maxLines,
          style: endeavourTheme.textTheme.bodyText2!.copyWith(
            color: color,
            fontWeight: endeavourTheme.textTheme.bodyText2!.fontWeight,
            fontFamily: endeavourTheme.textTheme.bodyText2!.fontFamily,
            fontSize: endeavourTheme.textTheme.bodyText2!.fontSize,
            fontStyle: endeavourTheme.textTheme.bodyText2!.fontStyle,
          ),
        );
}
