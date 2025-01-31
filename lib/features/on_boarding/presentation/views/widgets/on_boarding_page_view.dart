import 'package:flutter/material.dart';
import 'package:fruit_hub_app/features/on_boarding/presentation/views/widgets/page_view_item.dart';

import '../../../../../core/utils/app_images.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem(
          image: Assets.imagesPageViewItem1Image,
          backgroundImage: Assets.imagesPageViewItem1BackgroundImage,
          title: Row(children: [
            Text('مرحبًا بك في'),
            Text('Fruit'),
            Text('HUB'),
          ]),
          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
        )
      ],
    );
  }
}
