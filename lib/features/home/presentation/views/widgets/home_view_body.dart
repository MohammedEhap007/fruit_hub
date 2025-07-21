import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub_app/constants.dart';
import 'package:fruit_hub_app/core/cubits/products_cubit/products_cubit.dart';
import 'package:fruit_hub_app/core/widgets/search_text_field.dart';
import 'package:fruit_hub_app/features/home/presentation/views/widgets/best_selling_grid_view.dart';
import 'package:fruit_hub_app/features/home/presentation/views/widgets/best_selling_header.dart';
import 'package:fruit_hub_app/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:fruit_hub_app/features/home/presentation/views/widgets/featured_items_list.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    context.read<ProductsCubit>().getBestSellingProducts();
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
                CustomHomeAppBar(),
                SizedBox(
                  height: 16.0,
                ),
                SearchTextField(),
                SizedBox(
                  height: 12.0,
                ),
                FeaturedItemsList(),
                SizedBox(
                  height: 12.0,
                ),
                BestSellingHeader(),
                SizedBox(
                  height: 8.0,
                ),
              ],
            ),
          ),
          BestSellingGridView(),
        ],
      ),
    );
  }
}
