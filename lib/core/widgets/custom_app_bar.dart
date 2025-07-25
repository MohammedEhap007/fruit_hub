import 'package:flutter/material.dart';

import '../utils/app_text_styles.dart';

AppBar buildAppBar(context,
    {required String title, bool leading = true, Widget? action}) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: leading
        ? GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios_new,
            ),
          )
        : null,
    title: Text(
      title,
      style: TextStyles.bold19,
      textAlign: TextAlign.center,
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: action,
      ),
    ],
    centerTitle: true,
    elevation: 0.0,
    scrolledUnderElevation: 0.0,
  );
}
