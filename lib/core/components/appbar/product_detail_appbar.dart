import 'package:flutter/material.dart';

import '../../constants/color/app_colors.dart';
import '../../init/theme/lightTheme/endavour_theme.dart';
import '../../text/headline/headline4_text.dart';

class ProductDetailAppBar extends AppBar {
  ProductDetailAppBar({super.key, required String text})
      : super(
          backgroundColor: endeavourTheme.appBarTheme.backgroundColor,
          centerTitle: true,
          title: Headline4Text(
            text: text.toString(),
            color: AppColors.white,
          ),
        );
}
