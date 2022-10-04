import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/components/card/home_product_card.dart';
import '../../../core/components/container/home_background_container.dart';
import '../../../core/components/listview/base_list_view.dart';
import '../viewmodel/home_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBackgroundContainer(
        child: Column(
          children: [
            const Spacer(),
            Consumer<HomeViewModel>(
              builder: (context, viewModel, child) => SizedBox(
                height: 200,
                child: ListViewBuilder(
                  scrollDirection: Axis.horizontal,
                  itemCount: viewModel.productModel!.length,
                  itemBuilder: (context, index) => HomeProductCard(
                    viewModel: viewModel,
                    index: index,
                  ),
                ),
              ),
            ),
            const Spacer(flex: 6),
          ],
        ),
      ),
    );
  }
}
