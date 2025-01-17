import 'package:flutter/material.dart';
import 'package:fruits_hub_dash_board/features/dashboard/views/dash_board_view.dart';
import 'package:fruits_hub_dash_board/features/add_product/presentation/views/add_product_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case DashBoardView.routeName:
      return MaterialPageRoute(builder: (context) => const DashBoardView());
    case AddProductView.routeName:
      return MaterialPageRoute(builder: (context) => const AddProductView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
