import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub_app/core/helper/build_snack_bar.dart';
import 'package:fruit_hub_app/core/widgets/custom_progress_hud.dart';
import 'package:fruit_hub_app/features/auth/presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:fruit_hub_app/features/auth/presentation/views/widgets/signin_view_body.dart';
import 'package:fruit_hub_app/features/home/presentation/views/main_view.dart';

class SigninViewBodyBlocConsumer extends StatelessWidget {
  const SigninViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninSuccess) {
          Navigator.pushNamed(context, MainView.routeName);
        }
        if (state is SigninFailure) {
          buildSnackBar(context, state.message);
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
          isLoading: state is SigninLoading ? true : false,
          child: const SigninViewBody(),
        );
      },
    );
  }
}
