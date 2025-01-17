import 'package:flutter/material.dart';
import 'package:fruits_hub_dash_board/core/widgets/custom_button.dart';
import 'package:fruits_hub_dash_board/features/add_product/presentation/views/add_product_view.dart';

class DashBoardViewBody extends StatelessWidget {
  const DashBoardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            onPressed: () {
              Navigator.pushNamed(context, AddProductView.routeName);
            },
            text: "Add data",
          ),
        ],
      ),
    );
  }
}
