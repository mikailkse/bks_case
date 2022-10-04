import '../../../view/home/model/product_detail_dummy_model.dart';
import '../../../view/home/viewmodel/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../view/productdetail/view/product_detail_view.dart';
import '../../constants/color/app_colors.dart';
import '../../init/navigation/navigation_service.dart';
import '../container/base_shadow_container.dart';
import '../text/headline/headline5_text.dart';

class HomeProductCard extends StatelessWidget {
  final HomeViewModel viewModel;
  final int index;
  const HomeProductCard(
      {super.key, required this.viewModel, required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => NavigationService.instance.navigateToPage(
            ProductDetailView.routeName,
            data: ProductDetailDummyModel(
              name: viewModel.productModel![index].name,
              image: viewModel.productModel![index].image,
              model: viewModel.productModel![index].model,
              mac: viewModel.productModel![index].mac,
            ),
          ),
          child: BaseShadowContainer(
            width: context.width / 2.5,
            height: 200,
            margin: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Headline5Text(
                  text: viewModel.productModel![index].name.toString(),
                  color: AppColors.armadillo,
                ),
                Hero(
                  tag: viewModel.productModel![index].name ?? '',
                  child: Image.asset(
                    viewModel.productModel![index].image.toString(),
                    fit: BoxFit.cover,
                    height: 150,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
