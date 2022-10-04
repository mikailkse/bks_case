import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:provider/provider.dart';

import '../../../core/components/appbar/product_detail_appbar.dart';
import '../../../core/components/buttons/switchButton/custom_switch_button.dart';
import '../../../core/components/container/base_shadow_container.dart';
import '../../../core/components/text/headline/headline5_text.dart';
import '../../../core/components/text/headline/headline6_text.dart';
import '../../../core/constants/color/app_colors.dart';
import '../../home/model/product_detail_dummy_model.dart';
import '../viewmodel/product_detail_view_model.dart';

class ProductDetailView extends StatefulWidget {
  static const routeName = 'productDetailView';
  const ProductDetailView({super.key});

  @override
  State<ProductDetailView> createState() => _ProductDetailViewState();
}

class _ProductDetailViewState extends State<ProductDetailView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<ProductDetailViewModel>().getSwitch();
    });
  }

  @override
  Widget build(BuildContext context) {
    var viewChanged =
        ModalRoute.of(context)!.settings.arguments as ProductDetailDummyModel;
    return Scaffold(
      appBar: ProductDetailAppBar(text: viewChanged.name ?? ''),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BaseShadowContainer(
              width: double.infinity,
              margin: context.paddingLow,
              height: 300,
              child: Hero(
                tag: viewChanged.name ?? '',
                child: Image.asset(
                  '${viewChanged.image}',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            ListTile(
              title: Headline5Text(
                text: viewChanged.model ?? '',
                color: AppColors.armadillo,
              ),
              subtitle: Headline6Text(
                text: viewChanged.mac ?? '',
                color: AppColors.armadillo,
              ),
            ),
            viewChanged.name == 'Lamba'
                ? ListTile(
                    title: Headline5Text(
                      color: AppColors.armadillo,
                      text: 'Aç/Kapat',
                    ),
                    trailing: Consumer<ProductDetailViewModel>(
                      builder: (context, viewModel, child) =>
                          CustomSwitchButton(
                        value: viewModel.lambOnOffSwithValue,
                        onChanged: (value) =>
                            viewModel.buildIsLambOnOff(value, context),
                      ),
                    ),
                  )
                : Consumer<ProductDetailViewModel>(
                    builder: (context, viewModel, child) => Column(
                      children: [
                        Headline5Text(
                          text: '${viewModel.sliderCount} C°',
                          color: AppColors.orangeRoughy,
                        ),
                        Slider(
                          value: viewModel.sliderCount.toDouble(),
                          onChanged: (value) => viewModel.sliderChanged(value),
                          activeColor: AppColors.endeavour,
                          onChangeStart: (double startValue) {},
                          onChangeEnd: (value) =>
                              viewModel.onEndNotification(value, context),
                          min: 0,
                          max: 250,
                        ),
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
