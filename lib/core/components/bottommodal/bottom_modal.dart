import 'package:flutter/material.dart';

import '../../init/theme/lightTheme/endavour_theme.dart';

Future<dynamic> customBottomModal(
    BuildContext context, Widget Function(BuildContext) builder) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: endeavourTheme.bottomSheetTheme.backgroundColor,
    shape: endeavourTheme.bottomSheetTheme.shape,
    builder: builder,
  );
}
