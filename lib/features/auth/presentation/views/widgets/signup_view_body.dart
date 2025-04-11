import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub_app/constants.dart';
import 'package:fruit_hub_app/core/widgets/custom_button.dart';
import 'package:fruit_hub_app/core/widgets/custom_text_form_field.dart';
import 'package:fruit_hub_app/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruit_hub_app/features/auth/presentation/views/widgets/have_an_account_widget.dart';
import 'package:fruit_hub_app/features/auth/presentation/views/widgets/terms_and_conditions_widget.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  late String name, email, password;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kHorizontalPadding,
        ),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  name = value!;
                },
                keyboardType: TextInputType.name,
                hintText: 'الاسم كامل',
              ),
              SizedBox(
                height: 16,
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
              CustomTextFormField(
                onSaved: (value) {
                  password = value!;
                },
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
              TermsAndConditionsWidget(),
              SizedBox(
                height: 30,
              ),
              CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    context.read<SignupCubit>().createUserWithEmailAndPassword(
                          name,
                          email,
                          password,
                        );
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
                text: 'إنشاء حساب جديد',
              ),
              SizedBox(
                height: 26,
              ),
              HaveAnAccountWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
