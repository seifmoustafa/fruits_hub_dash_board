import 'package:flutter/material.dart';
import 'package:fruits_hub_dash_board/features/dashboard/views/widgets/dash_board_view_body.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DashBoardViewBody(),
    );
  }
}
