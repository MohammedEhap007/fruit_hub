import 'package:flutter/material.dart';
import 'package:fruit_hub_app/core/widgets/fruit_item.dart';

class BestSellingGridView extends StatelessWidget {
  const BestSellingGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 163 / 214,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 16.0,
      ),
      itemBuilder: (context, index) => const FruitItem(),
    );
  }
}
