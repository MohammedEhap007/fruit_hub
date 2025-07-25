import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub_app/core/utils/app_colors.dart';
import 'package:fruit_hub_app/core/utils/app_text_styles.dart';
import 'package:fruit_hub_app/features/home/domain/entities/cart_item_entity.dart';
import 'package:fruit_hub_app/features/home/presentation/cubits/cart_item_cubit/cart_item_cubit.dart';
import 'package:fruit_hub_app/features/home/presentation/views/widgets/cart_item_action_button.dart';

class CartItemAction extends StatelessWidget {
  const CartItemAction({super.key, required this.cartItemEntity});

  final CartItemEntity cartItemEntity;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CartItemActionButton(
          icon: Icons.add,
          color: AppColors.primaryColor,
          iconColor: Colors.white,
          onTap: () {
            cartItemEntity.incrementQuantity();
            context.read<CartItemCubit>().updateCartItem(cartItemEntity);
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            cartItemEntity.quantity.toString(),
            style: TextStyles.bold16,
          ),
        ),
        CartItemActionButton(
          icon: Icons.remove,
          color: Color(0xFFF3F5F7),
          iconColor: Colors.grey,
          onTap: () {
            cartItemEntity.decrementQuantity();
            context.read<CartItemCubit>().updateCartItem(cartItemEntity);
          },
        ),
      ],
    );
  }
}
