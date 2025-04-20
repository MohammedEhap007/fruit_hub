import 'package:flutter/material.dart';

import 'featured_item.dart';

class FeaturedItemsList extends StatelessWidget {
  const FeaturedItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: List.generate(
          4,
          (index) {
            return Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: FeaturedItem(),
            );
          },
        ),
      ),
    );
  }
}
