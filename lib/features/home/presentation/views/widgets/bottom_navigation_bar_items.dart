import 'package:flutter/material.dart';
import 'package:fruit_hub_app/features/home/domain/entities/bottom_navigation_bar_entity.dart';
import 'package:fruit_hub_app/features/home/presentation/views/widgets/active_bottom_navigation_bar_item.dart';
import 'in_active_bottom_navigation_bar_item.dart';

class BottomNavigationBarItems extends StatelessWidget {
  const BottomNavigationBarItems({
    super.key,
    required this.isSelected,
    required this.bottomNavigationBarEntity,
  });

  final bool isSelected;
  final BottomNavigationBarEntity bottomNavigationBarEntity;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveBottomNavigationBarItem(
            icon: bottomNavigationBarEntity.activeIcon,
            text: bottomNavigationBarEntity.name,
          )
        : InActiveBottomNavigationBarItem(
            icon: bottomNavigationBarEntity.inActiveIcon,
          );
  }
}
