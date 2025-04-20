import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub_app/core/utils/app_images.dart';
import 'package:fruit_hub_app/core/utils/app_text_styles.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        width: 44,
        height: 44,
        child: CircleAvatar(
          backgroundColor: Color(0XFF5DB957),
          foregroundImage: const AssetImage(
            Assets.imagesProfileAvatar,
          ),
        ),
      ),
      title: Text(
        'صباح الخير ..!',
        style: TextStyles.regular16.copyWith(
          color: const Color(0XFF949D9E),
        ),
        textAlign: TextAlign.right,
      ),
      subtitle: Text(
        'أحمد مصطفي',
        style: TextStyles.bold16.copyWith(
          color: const Color(0XFF0C0D0D),
        ),
        textAlign: TextAlign.right,
      ),
      trailing: SizedBox(
        width: 34,
        height: 34,
        child: CircleAvatar(
          backgroundColor: Color(0XFFEEF8ED),
          child: ClipOval(
            child: SvgPicture.asset(
              Assets.imagesNotification,
            ),
          ),
        ),
      ),
    );
  }
}
