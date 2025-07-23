import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub_app/core/cubits/products_cubit/products_cubit.dart';
import 'package:fruit_hub_app/core/helper/get_dummy_product.dart';
import 'package:fruit_hub_app/core/widgets/custom_error_widget.dart';
import 'package:fruit_hub_app/features/home/presentation/views/widgets/products_grid_view.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProductsGridViewBlocBuilder extends StatelessWidget {
  const ProductsGridViewBlocBuilder({super.key, this.productsLimit});

  final int? productsLimit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsSuccess) {
          return ProductsGridView(
            products: state.products,
            productsLimit: productsLimit,
          );
        } else if (state is ProductsFailure) {
          return SliverToBoxAdapter(
              child: CustomErrorWidget(text: state.errorMessage));
        } else {
          return Skeletonizer.sliver(
            child: ProductsGridView(
              products: getDummyProducts(count: 8),
            ),
          );
        }
      },
    );
  }
}
