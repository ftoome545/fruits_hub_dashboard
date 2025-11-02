import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/helper_functions/get_dummy_order.dart';

import 'filter_section.dart';
import 'order_item.dart';

class OrderViewBody extends StatelessWidget {
  const OrderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const FilterSection(),
            const SizedBox(
              height: 16,
            ),
            OrderItem(
              order: getDummyOrder(),
            ),
          ],
        ),
      ),
    );
  }
}
