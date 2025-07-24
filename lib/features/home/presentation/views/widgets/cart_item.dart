import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub_app/core/utils/app_colors.dart';
import 'package:fruit_hub_app/core/utils/app_images.dart';
import 'package:fruit_hub_app/core/utils/app_text_styles.dart';
import 'package:fruit_hub_app/features/home/presentation/views/widgets/cart_item_action.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Container(
            width: 73,
            height: 92,
            decoration: BoxDecoration(
              color: Color(0xFFF3F5F7),
            ),
            child: CachedNetworkImage(
              imageUrl:
                  'https://www.udgamschool.com/wp-content/uploads/2023/05/dummy-image-grey-e1398449111870.jpg',
            ),
          ),
          SizedBox(width: 17.0),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'تفاح',
                      style: TextStyles.bold13,
                    ),
                    Spacer(),
                    InkWell(
                      borderRadius: BorderRadius.circular(8.0),
                      onTap: () {},
                      child: SvgPicture.asset(
                        Assets.imagesTrashIcon,
                      ),
                    )
                  ],
                ),
                Text(
                  '3 كيلو',
                  textAlign: TextAlign.right,
                  style: TextStyles.regular13.copyWith(
                    color: AppColors.secondaryColor,
                  ),
                ),
                Row(
                  children: [
                    CartItemAction(),
                    Spacer(),
                    Text(
                      '60 جنيه ',
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
  }
}
