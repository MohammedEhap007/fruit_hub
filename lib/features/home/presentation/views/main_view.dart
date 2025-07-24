import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub_app/features/home/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:fruit_hub_app/features/home/presentation/views/cart_view.dart';
import 'package:fruit_hub_app/features/home/presentation/views/products_view.dart';
import 'package:fruit_hub_app/features/home/presentation/views/widgets/custom_bottom_navigation_bar.dart';
import 'package:fruit_hub_app/features/home/presentation/views/home_view.dart';

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
    return BlocProvider(
      create: (context) => CartCubit(),
      child: Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: currentViewIndex,
            children: const [
              HomeView(),
              ProductsView(),
              CartView(),
            ],
          ),
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
