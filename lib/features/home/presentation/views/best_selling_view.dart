import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub_app/core/cubits/products_cubit/products_cubit.dart';
import 'package:fruit_hub_app/core/services/get_it_service.dart';
import 'package:fruit_hub_app/core/widgets/custom_app_bar.dart';
import 'package:fruit_hub_app/core/widgets/notification_widget.dart';
import 'package:fruit_hub_app/features/home/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:fruit_hub_app/features/home/presentation/views/widgets/best_selling_view_body.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});

  static const routeName = 'bestSelling';

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: getIt.get<ProductsCubit>(),
        ),
        BlocProvider.value(
          value: getIt.get<CartCubit>(),
        )
      ],
      child: Scaffold(
        appBar: buildAppBar(
          context,
          title: 'الأكثر مبيعًا',
          action: const NotificationWidget(),
        ),
        body: BestSellingViewBody(),
      ),
    );
  }
}
