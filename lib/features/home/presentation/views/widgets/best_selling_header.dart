import 'package:flutter/material.dart';
import 'package:fruit_hub_app/core/utils/app_text_styles.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'الأكثر مبيعًا',
          style: TextStyles.bold16.copyWith(
            color: Color(0XFF0C0D0D),
          ),
          textAlign: TextAlign.right,
        ),
        Spacer(),
        Text(
          'المزيد',
          style: TextStyles.regular13.copyWith(
            color: Color(0XFF949D9E),
          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
