import 'package:flutter/material.dart';
import 'package:fruit_hub_app/constants.dart';
import 'package:fruit_hub_app/core/widgets/custom_app_bar.dart';
import 'package:fruit_hub_app/core/widgets/custom_button.dart';
import 'package:fruit_hub_app/core/widgets/custom_divider.dart';
import 'package:fruit_hub_app/features/home/presentation/views/widgets/cart_header.dart';
import 'package:fruit_hub_app/features/home/presentation/views/widgets/cart_items_list.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kHorizontalPadding,
      ),
      child: Stack(
        children: [
          CustomScrollView(
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
              SliverToBoxAdapter(
                child: CustomDivider(),
              ),
              CartItemsList(),
              SliverToBoxAdapter(
                child: CustomDivider(),
              ),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: MediaQuery.sizeOf(context).height * 0.07,
            child: CustomButton(
              onPressed: () {},
              text: 'الدفع 120 جنيه',
            ),
          ),
        ],
      ),
    );
  }
}
