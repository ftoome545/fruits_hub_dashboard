import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/helper_functions/get_dummy_order.dart';
import 'package:fruits_hub_dashboard/features/order/presentation/view/widgets/order_items_list_view.dart';
import 'filter_section.dart';

class OrderViewBody extends StatelessWidget {
  const OrderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const FilterSection(),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: OrderItemsListView(
              orderEntity: [
                getDummyOrder(),
                getDummyOrder(),
                getDummyOrder(),
                getDummyOrder(),
                getDummyOrder(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
