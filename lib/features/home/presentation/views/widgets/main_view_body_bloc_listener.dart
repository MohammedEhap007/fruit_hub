import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub_app/core/helper/build_snack_bar.dart';
import 'package:fruit_hub_app/features/home/presentation/cubits/cart_cubit/cart_cubit.dart';

import 'main_view_body.dart';

class MainViewBodyBlocListener extends StatelessWidget {
  const MainViewBodyBlocListener({
    super.key,
    required this.currentViewIndex,
  });

  final int currentViewIndex;

  @override
  Widget build(BuildContext context) {
    return BlocListener<CartCubit, CartState>(
      listener: (context, state) {
        if (state is CartProductAdded) {
          buildSnackBar(context, 'تمت إضافة المنتج إلى السلة بنجاح',
              isError: false);
        }
      },
      child: MainViewBody(currentViewIndex: currentViewIndex),
    );
  }
}
