import 'package:flutter/material.dart';
import 'package:fruit_hub_app/constants.dart';
import 'package:fruit_hub_app/core/widgets/search_text_field.dart';
import 'package:fruit_hub_app/features/home/presentation/views/widgets/best_selling_header.dart';
import 'package:fruit_hub_app/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:fruit_hub_app/features/home/presentation/views/widgets/featured_items_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
