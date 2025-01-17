import 'package:flutter/material.dart';
import 'package:fruits_hub_dash_board/core/utils/app_colors.dart';
import 'package:fruits_hub_dash_board/core/utils/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.text});
  final VoidCallback onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16))),
        onPressed: onPressed,
        child: Text(
          style: TextStyles.bold16.copyWith(color: Colors.white),
          text,
        ),
      ),
    );
  }
}
