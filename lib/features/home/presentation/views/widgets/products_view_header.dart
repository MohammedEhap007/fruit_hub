import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub_app/core/utils/app_images.dart';
import 'package:fruit_hub_app/core/utils/app_text_styles.dart';

class ProductsViewHeader extends StatelessWidget {
  const ProductsViewHeader({super.key, required this.productsLength});

  final int productsLength;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$productsLength نتائج',
          style: TextStyles.bold16,
          textAlign: TextAlign.right,
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: ShapeDecoration(
            // ignore: deprecated_member_use
            color: Colors.white.withOpacity(0.10000000149011612),
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Color(0x66CACECE)),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          child: SvgPicture.asset(
            Assets.imagesFilter2Icon,
          ),
        )
      ],
    );
  }
}
