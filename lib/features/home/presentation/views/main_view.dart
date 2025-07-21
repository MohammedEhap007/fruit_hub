import 'package:flutter/material.dart';
import 'package:fruit_hub_app/features/home/presentation/views/widgets/custom_bottom_navigation_bar.dart';
import 'package:fruit_hub_app/features/home/presentation/views/widgets/home_view.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  static const routeName = 'mainView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: HomeView(),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
