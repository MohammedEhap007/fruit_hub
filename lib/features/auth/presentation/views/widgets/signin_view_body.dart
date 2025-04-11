import 'package:flutter/material.dart';
import 'package:fruit_hub_app/core/utils/app_colors.dart';
import 'package:fruit_hub_app/core/utils/app_images.dart';
import 'package:fruit_hub_app/core/widgets/custom_button.dart';
import 'package:fruit_hub_app/core/widgets/custom_text_form_field.dart';
import 'package:fruit_hub_app/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:fruit_hub_app/features/auth/presentation/views/widgets/social_login_button.dart';

import 'dont_have_an_account_widget.dart';

class SigninViewBody extends StatelessWidget {
  const SigninViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            CustomTextFormField(
              keyboardType: TextInputType.emailAddress,
              hintText: 'البريد الإلكتروني',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              keyboardType: TextInputType.visiblePassword,
              hintText: 'كلمة المرور',
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: Color(0XFFC9CECF),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'نسيت كلمة المرور؟',
                  style: TextStyle(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 33,
            ),
            CustomButton(onPressed: () {}, text: 'تسجيل الدخول'),
            SizedBox(
              height: 33,
            ),
            DontHaveAnAccountWidget(),
            SizedBox(
              height: 33,
            ),
            OrDivider(),
            SizedBox(
              height: 16,
            ),
            SocialLoginButton(
              text: 'تسجيل بواسطة جوجل',
              image: Assets.imagesGoogleIcon,
            ),
            SizedBox(
              height: 16,
            ),
            SocialLoginButton(
                text: 'تسجيل بواسطة أبل', image: Assets.imagesAppleIcon),
            SizedBox(
              height: 16,
            ),
            SocialLoginButton(
              text: 'تسجيل بواسطة فيسبوك',
              image: Assets.imagesFacebookIcon,
            ),
          ],
        ),
      ),
    );
  }
}
