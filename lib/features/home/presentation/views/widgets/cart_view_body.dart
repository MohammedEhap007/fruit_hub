import 'package:flutter/material.dart';
import 'package:fruit_hub_app/constants.dart';
import 'package:fruit_hub_app/core/widgets/custom_app_bar.dart';
import 'package:fruit_hub_app/features/home/presentation/views/widgets/cart_header.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

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
                buildAppBar(context, title: 'السلة'),
                SizedBox(
                  height: 16.0,
                ),
                CartHeader(),
                SizedBox(
                  height: 24.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
