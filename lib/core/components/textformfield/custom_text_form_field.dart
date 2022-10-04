// ignore_for_file: overridden_fields

import 'package:flutter/material.dart';

import '../../constants/color/app_colors.dart';
import '../../init/theme/lightTheme/endavour_theme.dart';

class CustomTextFormField extends TextFormField {
  CustomTextFormField({
    Key? key,
    TextEditingController? controller,
    String? hintText,
    String? labelText,
    Widget? prefixIcon,
    Widget? suffixIcon,
    bool? obscureText = false,
  }) : super(
          key: key,
          style: endeavourTheme.textTheme.bodyMedium!
              .copyWith(color: AppColors.gunPowder),
          obscureText: obscureText!,
          validator: (value) =>
              value!.isNotEmpty ? null : 'Lütfen eksik bilgileri doldurun.',
          controller: controller,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            hintText: hintText,
            labelText: labelText,
            prefixIcon: prefixIcon,
            labelStyle: endeavourTheme.inputDecorationTheme.labelStyle,
            filled: endeavourTheme.inputDecorationTheme.filled,
            fillColor: endeavourTheme.inputDecorationTheme.fillColor,
            hintStyle: endeavourTheme.inputDecorationTheme.hintStyle,
            errorStyle: endeavourTheme.inputDecorationTheme.errorStyle,
            errorBorder: endeavourTheme.inputDecorationTheme.errorBorder,
            disabledBorder: endeavourTheme.inputDecorationTheme.disabledBorder,
            focusedErrorBorder:
                endeavourTheme.inputDecorationTheme.focusedBorder,
            focusedBorder: endeavourTheme.inputDecorationTheme.focusedBorder,
            enabledBorder: endeavourTheme.inputDecorationTheme.enabledBorder,
          ),
        );
}
