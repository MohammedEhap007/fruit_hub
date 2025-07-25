import 'package:flutter/material.dart';
import 'package:fruit_hub_app/core/utils/app_text_styles.dart';
import 'package:fruit_hub_app/features/home/presentation/views/best_selling_view.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, BestSellingView.routeName),
      child: Row(
        children: [
          Text(
            'الأكثر مبيعًا',
            style: TextStyles.bold16.copyWith(
              color: const Color(0XFF0C0D0D),
            ),
            textAlign: TextAlign.right,
          ),
          const Spacer(),
          Text(
            'المزيد',
            style: TextStyles.regular13.copyWith(
              color: const Color(0XFF949D9E),
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
