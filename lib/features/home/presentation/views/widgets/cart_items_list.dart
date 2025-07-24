import 'package:flutter/material.dart';
import 'package:fruit_hub_app/core/widgets/custom_divider.dart';
import 'package:fruit_hub_app/features/home/presentation/views/widgets/cart_item.dart';

class CartItemsList extends StatelessWidget {
  const CartItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      separatorBuilder: (context, index) => CustomDivider(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return CartItem();
      },
    );
  }
}
