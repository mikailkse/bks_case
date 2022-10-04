import 'core/init/theme/lightTheme/endavour_theme.dart';
import 'view/auth/login/view/login_view.dart';

import 'package:flutter/material.dart';

import 'core/init/navigation/navigation_route.dart';
import 'core/init/navigation/navigation_service.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: NavigationRoute.instance.generateRoute,
      navigatorKey: NavigationService.instance.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: endeavourTheme,
      home: const LoginView(),
    );
  }
}
