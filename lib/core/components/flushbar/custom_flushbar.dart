import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import '../../constants/color/app_colors.dart';

Flushbar<dynamic> showFlushbarWidget(String message) {
  return Flushbar(
    flushbarPosition: FlushbarPosition.TOP,
    backgroundColor: AppColors.grey,
    margin: const EdgeInsets.all(8),
    duration: const Duration(seconds: 2),
    icon: const Icon(Icons.check, size: 28.0, color: Colors.white),
    messageSize: 14,
    borderRadius: BorderRadius.circular(20),
    message: message,
  );
}
