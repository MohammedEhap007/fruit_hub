import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub_app/core/utils/app_colors.dart';
import 'package:fruit_hub_app/core/utils/app_images.dart';
import 'package:fruit_hub_app/core/widgets/custom_button.dart';
import 'package:fruit_hub_app/core/widgets/custom_text_form_field.dart';
import 'package:fruit_hub_app/core/widgets/password_field.dart';
import 'package:fruit_hub_app/features/auth/presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:fruit_hub_app/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:fruit_hub_app/features/auth/presentation/views/widgets/social_login_button.dart';

import 'dont_have_an_account_widget.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  late String email, password;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                keyboardType: TextInputType.emailAddress,
                hintText: 'البريد الإلكتروني',
              ),
              SizedBox(
                height: 16,
              ),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
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
              CustomButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      context
                          .read<SigninCubit>()
                          .signInWithEmailAndPassword(email, password);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                  text: 'تسجيل الدخول'),
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
      ),
    );
  }
}
