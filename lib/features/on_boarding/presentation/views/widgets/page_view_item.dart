import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub_app/constants.dart';
import 'package:fruit_hub_app/core/utils/app_text_styles.dart';
import 'package:fruit_hub_app/features/auth/presentation/views/signin_view.dart';

import '../../../../../core/services/shared_preferences_singleton.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.title,
    required this.subtitle,
    required this.isVisible,
  });

  final String image, backgroundImage;
  final Widget title;
  final String subtitle;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backgroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                right: 0,
                left: 0,
                bottom: 0,
                child: SvgPicture.asset(
                  image,
                ),
              ),
              Visibility(
                visible: isVisible,
                child: InkWell(
                  onTap: () {
                    Prefs.setBool(kIsOnBoardingSeen, true);
                    Navigator.pushReplacementNamed(
                      context,
                      SigninView.routeName,
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'تخط',
                      style: TextStyles.regular13.copyWith(
                        color: const Color(0XFF949D9E),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 64,
        ),
        title,
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 37.0,
          ),
          child: Text(
            subtitle,
            style:
                TextStyles.semiBold13.copyWith(color: const Color(0XFF4E5456)),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
