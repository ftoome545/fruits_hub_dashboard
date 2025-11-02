import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/features/order/domain/entities/order_entity.dart';
import 'package:fruits_hub_dashboard/features/order/presentation/view/widgets/order_item.dart';

class OrderItemsListView extends StatelessWidget {
  const OrderItemsListView({
    super.key,
    required this.orderEntity,
  });
  final List<OrderEntity> orderEntity;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: orderEntity.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: OrderItem(order: orderEntity[index]),
          );
        });
  }
}
