import 'package:flutter/material.dart';
import 'package:fruit_hub_app/core/utils/app_colors.dart';
import 'package:fruit_hub_app/core/utils/app_text_styles.dart';
import 'package:fruit_hub_app/features/home/presentation/views/widgets/cart_item_action_button.dart';

class CartItemAction extends StatelessWidget {
  const CartItemAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CartItemActionButton(
          icon: Icons.add,
          color: AppColors.primaryColor,
          iconColor: Colors.white,
          onPressed: () {},
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            '3',
            style: TextStyles.bold16,
          ),
        ),
        CartItemActionButton(
          icon: Icons.remove,
          color: Color(0xFFF3F5F7),
          iconColor: Colors.grey,
          onPressed: () {},
        ),
      ],
    );
  }
}
