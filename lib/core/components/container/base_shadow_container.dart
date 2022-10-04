import 'package:flutter/material.dart';

class BaseShadowContainer extends Container {
  BaseShadowContainer({
    super.key,
    required Widget child,
    final EdgeInsetsGeometry? margin,
    final EdgeInsetsGeometry? padding,
    final DecorationImage? image,
    final double? width,
    final double? height,
  }) : super(
          width: width,
          height: height,
          margin: margin,
          padding: padding,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: child,
        );
}
