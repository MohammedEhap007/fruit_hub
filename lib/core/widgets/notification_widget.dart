import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub_app/core/utils/app_images.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 34,
      height: 34,
      child: CircleAvatar(
        backgroundColor: const Color(0XFFEEF8ED),
        child: ClipOval(
          child: SvgPicture.asset(
            Assets.imagesNotification,
          ),
        ),
      ),
    );
  }
}
