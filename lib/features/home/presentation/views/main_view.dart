import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub_app/core/services/get_it_service.dart';
import 'package:fruit_hub_app/features/home/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:fruit_hub_app/features/home/presentation/views/widgets/custom_bottom_navigation_bar.dart';

import 'widgets/main_view_body_bloc_listener.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  static const routeName = 'mainView';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentViewIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt.get<CartCubit>(),
      child: Scaffold(
        body: SafeArea(
          child: MainViewBodyBlocListener(currentViewIndex: currentViewIndex),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
          onItemTapped: (index) {
            setState(() {
              currentViewIndex = index;
            });
          },
        ),
      ),
    );
  }
}
