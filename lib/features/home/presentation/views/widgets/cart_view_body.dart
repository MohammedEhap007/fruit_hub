import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub_app/constants.dart';
import 'package:fruit_hub_app/core/widgets/custom_app_bar.dart';
import 'package:fruit_hub_app/core/widgets/custom_divider.dart';
import 'package:fruit_hub_app/features/home/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:fruit_hub_app/features/home/presentation/views/widgets/cart_header.dart';
import 'package:fruit_hub_app/features/home/presentation/views/widgets/cart_items_list.dart';
import 'package:fruit_hub_app/features/home/presentation/views/widgets/custom_cart_button.dart';

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
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const SizedBox(
                      height: kTopPadding,
                    ),
                    buildAppBar(
                      context,
                      title: 'السلة',
                      leading: false,
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    const CartHeader(),
                    const SizedBox(
                      height: 24.0,
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: context.read<CartCubit>().cartEntity.cartItems.isEmpty
                    ? const SizedBox()
                    : const CustomDivider(),
              ),
              CartItemsList(
                cartItems: context.watch<CartCubit>().cartEntity.cartItems,
              ),
              SliverToBoxAdapter(
                child: context.read<CartCubit>().cartEntity.cartItems.isEmpty
                    ? const SizedBox()
                    : const CustomDivider(),
              ),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: MediaQuery.sizeOf(context).height * 0.07,
            child: const CustomCartButton(),
          ),
        ],
      ),
    );
  }
}
