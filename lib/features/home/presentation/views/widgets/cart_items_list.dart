import 'package:flutter/material.dart';
import 'package:fruit_hub_app/core/widgets/custom_divider.dart';
import 'package:fruit_hub_app/features/home/domain/entities/cart_item_entity.dart';
import 'package:fruit_hub_app/features/home/presentation/views/widgets/cart_item.dart';

class CartItemsList extends StatelessWidget {
  const CartItemsList({super.key, required this.cartItems});

  final List<CartItemEntity>
      cartItems; // Example list, replace with actual data source

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      separatorBuilder: (context, index) => CustomDivider(),
      itemCount: cartItems.length,
      itemBuilder: (context, index) {
        return CartItem(
          cartItemEntity: cartItems[index],
        );
      },
    );
  }
}
