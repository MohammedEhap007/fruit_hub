import 'package:flutter/material.dart';
import 'package:fruit_hub_app/core/utils/app_colors.dart';

void buildSnackBar(BuildContext context, String message,
    {bool isError = true}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: isError ? Colors.red : AppColors.lightPrimaryColor,
      elevation: 0.0,
      duration: const Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      content: Center(
        child: Text(message),
      ),
    ),
  );
}
