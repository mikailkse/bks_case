import 'package:flutter/material.dart';

import '../model/product_detail_dummy_model.dart';

class HomeViewModel extends ChangeNotifier {
  List<ProductDetailDummyModel>? productModel = ProductDummy.detail;
}
