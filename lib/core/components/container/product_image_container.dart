import 'package:flutter/material.dart';

class ProductImageContainer extends Container {
  ProductImageContainer({
    Key? key,
    required String image,
  }) : super(
          key: key,
          width: double.infinity,
          margin: const EdgeInsets.all(10),
          height: 300,
          child: Image.asset(
            image.toString(),
            fit: BoxFit.fitHeight,
          ),
        );
}
