import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.title,
    required this.subtitle,
  });

  final String image, backgroundImage;
  final Widget title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
