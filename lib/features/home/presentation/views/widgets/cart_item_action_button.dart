import 'package:flutter/material.dart';

class CartItemActionButton extends StatelessWidget {
  const CartItemActionButton({
    super.key,
    required this.icon,
    required this.color,
    required this.iconColor,
    required this.onTap,
  });

  final IconData icon;
  final Color color;
  final Color iconColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 24,
        height: 24,
        padding: EdgeInsets.all(2.0),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          color: color,
        ),
        child: FittedBox(
          child: Icon(
            icon,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
