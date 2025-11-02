import 'order_product_entity.dart';
import 'shipping_address_entity.dart';

class OrderEntity {
  final double totalPrice;
  final String uId;
  final ShippingAddressEntity shippingAddressModel;
  final List<OrderProductEntity> orderProduct;
  final String paymentMethod;
  final String? status;
  final String orderID;

  OrderEntity({
    required this.totalPrice,
    required this.uId,
    required this.shippingAddressModel,
    required this.orderProduct,
    required this.paymentMethod,
    required this.status,
    required this.orderID,
  });
}
