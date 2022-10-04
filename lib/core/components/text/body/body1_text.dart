import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../init/theme/lightTheme/endavour_theme.dart';

class BodyText extends AutoSizeText {
  BodyText({
    Key? key,
    required String text,
    required Color color,
    int? maxLines,
    TextAlign? textAlign,
  }) : super(
          key: key,
          text,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 1,
          textAlign: textAlign,
          maxLines: maxLines,
          style: endeavourTheme.textTheme.bodyText1!.copyWith(
            color: color,
            fontWeight: endeavourTheme.textTheme.bodyText1!.fontWeight,
            fontFamily: endeavourTheme.textTheme.bodyText1!.fontFamily,
            fontSize: endeavourTheme.textTheme.bodyText1!.fontSize,
            fontStyle: endeavourTheme.textTheme.bodyText1!.fontStyle,
          ),
        );
}
