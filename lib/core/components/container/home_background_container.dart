import 'package:flutter/material.dart';

class HomeBackgroundContainer extends Container {
  HomeBackgroundContainer({
    Key? key,
    required Widget child,
  }) : super(
          key: key,
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/kitchen_background.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: child,
        );
}
