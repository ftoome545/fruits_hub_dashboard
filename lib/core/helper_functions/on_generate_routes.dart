import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/features/add_product/presentation/view/add_product_view.dart';
import 'package:fruits_hub_dashboard/features/dashboard/view/dashboard_view.dart';
import 'package:fruits_hub_dashboard/features/dashboard/view/widgets/skeletonizer_loading.dart';
import 'package:fruits_hub_dashboard/features/order/presentation/view/order_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case DashboardView.routeName:
      return MaterialPageRoute(builder: (context) => const DashboardView());

    case AddProductView.routeName:
      return MaterialPageRoute(builder: (context) => const AddProductView());

    case OrderView.routeName:
      return MaterialPageRoute(builder: (context) => const OrderView());

    case SkeletonizerExample.routeName:
      return MaterialPageRoute(
          builder: (context) => const SkeletonizerExample());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
