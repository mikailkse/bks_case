import 'view/_bottombar/viewmodel/app_bottom_bar.dart';
import 'view/auth/login/viewmodel/login_view_model.dart';
import 'view/home/viewmodel/home_view_model.dart';
import 'view/productdetail/viewmodel/product_detail_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => AppBottomBarViewModel(),
          ),
          ChangeNotifierProvider(
            create: (context) => HomeViewModel(),
          ),
          ChangeNotifierProvider(
            create: (context) => ProductDetailViewModel(),
          ),
          ChangeNotifierProvider(
            create: (context) => LoginViewModel(),
          ),
        ],
        child: const MyApp(),
      ),
    );
