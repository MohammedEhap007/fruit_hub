import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub_app/core/utils/app_colors.dart';
import 'package:fruit_hub_app/core/utils/app_images.dart';
import 'package:fruit_hub_app/core/utils/app_text_styles.dart';
import 'package:fruit_hub_app/features/home/domain/entities/cart_item_entity.dart';
import 'package:fruit_hub_app/features/home/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:fruit_hub_app/features/home/presentation/cubits/cart_item_cubit/cart_item_cubit.dart';
import 'package:fruit_hub_app/features/home/presentation/views/widgets/cart_item_action.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.cartItemEntity});

  final CartItemEntity cartItemEntity;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartItemCubit, CartItemState>(
      buildWhen: (previous, current) {
        if (current is CartItemUpdated) {
          if (current.cartItemEntity == cartItemEntity) {
            return true;
          }
        }
        return false;
      },
      builder: (context, state) {
        return IntrinsicHeight(
          child: Row(
            children: [
              Container(
                width: 73,
                height: 92,
                decoration: const BoxDecoration(
                  color: Color(0xFFF3F5F7),
                ),
                child: CachedNetworkImage(
                  imageUrl: cartItemEntity.productEntity.imageUrl!,
                ),
              ),
              const SizedBox(width: 17.0),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          cartItemEntity.productEntity.name,
                          style: TextStyles.bold13,
                        ),
                        const Spacer(),
                        InkWell(
                          borderRadius: BorderRadius.circular(8.0),
                          onTap: () {
                            context
                                .read<CartCubit>()
                                .removeCartItem(cartItemEntity);
                          },
                          child: SvgPicture.asset(
                            Assets.imagesTrashIcon,
                          ),
                        )
                      ],
                    ),
                    Text(
                      '${cartItemEntity.quantity} كيلو',
                      textAlign: TextAlign.right,
                      style: TextStyles.regular13.copyWith(
                        color: AppColors.secondaryColor,
                      ),
                    ),
                    Row(
                      children: [
                        CartItemAction(
                          cartItemEntity: cartItemEntity,
                        ),
                        const Spacer(),
                        Text(
                          '${cartItemEntity.calculateTotalPrice()} جنيه ',
                          style: TextStyles.bold16.copyWith(
                            color: AppColors.secondaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
