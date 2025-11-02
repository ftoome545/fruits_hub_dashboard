import 'package:fruits_hub_dashboard/features/order/domain/entities/order_entity.dart';

import 'order_product_model.dart';
import 'shipping_address_model.dart';

class OrderModel {
  final double totalPrice;
  final String uId;
  final ShippingAddressModel shippingAddressModel;
  final List<OrderProductModel> orderProduct;
  final String paymentMethod;
  final String? status;
  final String orderID;

  OrderModel({
    required this.totalPrice,
    required this.uId,
    required this.shippingAddressModel,
    required this.orderProduct,
    required this.paymentMethod,
    required this.status,
    required this.orderID,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) {
    return OrderModel(
      totalPrice: json['totalPrice'],
      uId: json['uId'],
      status: json['status'],
      orderID: json['orderId'],
      shippingAddressModel:
          ShippingAddressModel.fromJson(json['shippingAddressModel']),
      orderProduct: List<OrderProductModel>.from(
          json['orderProducts'].map((e) => OrderProductModel.fromJson(e))),
      paymentMethod: json['paymentMethod'],
    );
  }
  toJson() {
    return {
      'totalPrice': totalPrice,
      'uId': uId,
      'status': 'pending',
      'date': DateTime.now().toString(),
      'shippingAddressModel': shippingAddressModel.toJson(),
      'orderPrdocut': orderProduct.map((e) => e.toJson()).toList(),
      'paymentMethod': paymentMethod,
    };
  }

  toEntity() {
    return OrderEntity(
        totalPrice: totalPrice,
        uId: uId,
        shippingAddressModel: shippingAddressModel.toEntity(),
        orderProduct: orderProduct.map((e) => e.toEntity()).toList(),
        paymentMethod: paymentMethod,
        status: status,
        orderID: orderID);
  }
}
