import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub_app/core/cubits/products_cubit/products_cubit.dart';
import 'package:fruit_hub_app/core/helper/get_dummy_product.dart';
import 'package:fruit_hub_app/core/widgets/custom_error_widget.dart';
import 'package:fruit_hub_app/features/home/presentation/views/widgets/best_selling_grid_view.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BestSellingGridViewBlocBuilder extends StatelessWidget {
  const BestSellingGridViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsSuccess) {
          return BestSellingGridView(products: state.products);
        } else if (state is ProductsFailure) {
          return SliverToBoxAdapter(
              child: CustomErrorWidget(text: state.errorMessage));
        } else {
          return Skeletonizer.sliver(
            child: BestSellingGridView(
              products: getDummyProducts(count: 8),
            ),
          );
        }
      },
    );
  }
}
