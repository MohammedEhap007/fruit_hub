import 'package:flutter/material.dart';
import 'package:fruit_hub_app/core/utils/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 1,
            color: Color(0XFFDDDFDF),
          ),
        ),
        SizedBox(
          width: 18,
        ),
        Text(
          'أو',
          style: TextStyles.semiBold16,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          width: 18,
        ),
        Expanded(
          child: Divider(
            thickness: 1,
            color: Color(0XFFDDDFDF),
          ),
        ),
      ],
    );
  }
}
