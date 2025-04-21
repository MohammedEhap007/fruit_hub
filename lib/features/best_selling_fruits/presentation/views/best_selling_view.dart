import 'package:flutter/material.dart';
import 'package:fruit_hub_app/core/widgets/custom_app_bar.dart';
import 'package:fruit_hub_app/core/widgets/notification_widget.dart';
import 'package:fruit_hub_app/features/best_selling_fruits/presentation/views/widgets/best_selling_view_body.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});

  static const routeName = 'bestSelling';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: 'الأكثر مبيعًا',
        action: const NotificationWidget(),
      ),
      body: BestSellingViewBody(),
    );
  }
}
