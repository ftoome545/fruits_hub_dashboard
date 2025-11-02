import 'package:fruits_hub_dashboard/features/order/domain/entities/order_entity.dart';
import 'package:fruits_hub_dashboard/features/order/domain/entities/order_product_entity.dart';
import 'package:fruits_hub_dashboard/features/order/domain/entities/shipping_address_entity.dart';

OrderEntity getDummyOrder() {
  return OrderEntity(
    totalPrice: 230.75,
    uId: 'user_12345',
    orderID: 'ORD-001',
    paymentMethod: 'Credit Card',
    status: 'Shipped',
    shippingAddressModel: ShippingAddressEntity(
      fullName: 'Sarah Ali',
      email: 'sarah@example.com',
      phone: '+966 512345678',
      address: 'King Fahd Street',
      city: 'Riyadh',
      addressDetails: 'Apartment 12, Floor 3',
    ),
    orderProduct: [
      OrderProductEntity(
        name: 'Wireless Headphones',
        code: 'HP-001',
        imageUrl:
            'https://www.leafstudios.in/cdn/shop/files/1_a43c5e0b-3a47-497d-acec-b4764259b10e_1024x1024.png?v=1750486829',
        price: 120.50,
        quantity: 1,
      ),
      OrderProductEntity(
        name: 'Smart Watch',
        code: 'SW-002',
        imageUrl:
            'https://cdn.salla.sa/WKPN/f7fa8216-ff4c-42eb-9f7f-c2200f3e1050-1000x780.35902851109-VzHAEH2mDAtBwdTocvFY3D87UtF0iE7oGOe58eMd.png',
        price: 110.25,
        quantity: 1,
      ),
    ],
  );
}
