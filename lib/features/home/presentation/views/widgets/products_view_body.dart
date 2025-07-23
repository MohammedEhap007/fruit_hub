import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub_app/constants.dart';
import 'package:fruit_hub_app/core/cubits/products_cubit/products_cubit.dart';
import 'package:fruit_hub_app/core/widgets/custom_app_bar.dart';
import 'package:fruit_hub_app/core/widgets/notification_widget.dart';
import 'package:fruit_hub_app/core/widgets/search_text_field.dart';
import 'package:fruit_hub_app/features/home/presentation/views/widgets/products_grid_view_bloc_builder.dart';
import 'package:fruit_hub_app/features/home/presentation/views/widgets/products_view_header.dart';

class ProductsViewBody extends StatefulWidget {
  const ProductsViewBody({super.key});

  @override
  State<ProductsViewBody> createState() => _ProductsViewBodyState();
}

class _ProductsViewBodyState extends State<ProductsViewBody> {
  @override
  void initState() {
    context.read<ProductsCubit>().getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kHorizontalPadding,
      ),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: kTopPadding,
                ),
                buildAppBar(
                  context,
                  title: 'المنتجات',
                  leading: false,
                  action: NotificationWidget(),
                ),
                SizedBox(
                  height: 16.0,
                ),
                SearchTextField(),
                SizedBox(
                  height: 12.0,
                ),
                ProductsViewHeader(
                  productsLength: context.watch<ProductsCubit>().productsLength,
                ),
                SizedBox(
                  height: 8.0,
                ),
              ],
            ),
          ),
          ProductsGridViewBlocBuilder(),
        ],
      ),
    );
  }
}
