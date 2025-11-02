import 'package:fruits_hub_dashboard/features/order/domain/entities/shipping_address_entity.dart';

class ShippingAddressModel {
  String? fullName;
  String? email;
  String? address;
  String? city;
  String? addressDetails;
  String? phone;

  ShippingAddressModel(
      {this.fullName,
      this.email,
      this.address,
      this.city,
      this.addressDetails,
      this.phone});

  @override
  String toString() {
    return '$address $addressDetails $city';
  }

  factory ShippingAddressModel.fromJson(Map<String, dynamic> json) {
    return ShippingAddressModel(
      fullName: json['fullName'],
      phone: json['phone'],
      address: json['address'],
      addressDetails: json['addressDetails'],
      city: json['city'],
      email: json['email'],
    );
  }

  toJson() {
    return {
      'fullName': fullName,
      'email': email,
      'address': address,
      'city': city,
      'addressDetails': addressDetails,
      'phone': phone,
    };
  }

  toEntity() {
    return ShippingAddressEntity(
      fullName: fullName,
      email: email,
      address: address,
      addressDetails: addressDetails,
      phone: phone,
    );
  }
}
