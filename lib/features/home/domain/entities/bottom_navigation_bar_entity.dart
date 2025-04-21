import 'package:fruit_hub_app/core/utils/app_images.dart';

class BottomNavigationBarEntity {
  final String activeIcon, inActiveIcon;
  final String name;

  BottomNavigationBarEntity({
    required this.activeIcon,
    required this.inActiveIcon,
    required this.name,
  });
}

List<BottomNavigationBarEntity> get bottomNavigationBarItems => [
      BottomNavigationBarEntity(
        activeIcon: Assets.imagesHomeIconBold,
        inActiveIcon: Assets.imagesHomeIconOutline,
        name: 'الرئيسية',
      ),
      BottomNavigationBarEntity(
        activeIcon: Assets.imagesProductsIconBold,
        inActiveIcon: Assets.imagesProductsIconOutline,
        name: 'المنتجات',
      ),
      BottomNavigationBarEntity(
        activeIcon: Assets.imagesShoppingCartIconBold,
        inActiveIcon: Assets.imagesShoppingCartIconOutline,
        name: 'سلة التسوق',
      ),
      BottomNavigationBarEntity(
        activeIcon: Assets.imagesUserIconBold,
        inActiveIcon: Assets.imagesUserIconOutline,
        name: 'حسابي',
      ),
    ];
