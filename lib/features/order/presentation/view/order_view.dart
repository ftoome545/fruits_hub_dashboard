import 'package:flutter/material.dart';

import '../../../../core/widgets/build_app_bar.dart';
import 'widgets/order_view_body.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});
  static const routeName = 'order';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar('View Data'),
      body: const OrderViewBody(),
    );
  }
}
