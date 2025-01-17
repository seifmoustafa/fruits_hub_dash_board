import 'package:flutter/material.dart';
import 'package:fruits_hub_dash_board/core/widgets/build_app_bar.dart';
import 'package:fruits_hub_dash_board/features/add_product/presentation/views/widgets/add_broduct_view_body.dart';

class AddProductView extends StatelessWidget {
  const AddProductView({super.key});
  static const routeName = 'add-product';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "Add Product"),
      body: AddBroductViewBody(),
    );
  }
}
