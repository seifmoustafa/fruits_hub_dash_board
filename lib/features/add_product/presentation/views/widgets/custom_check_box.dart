import 'package:flutter/material.dart';
import 'package:fruits_hub_dash_board/core/utils/app_colors.dart';

/// A custom checkbox widget that uses an SVG image for the check mark.
///
/// This widget is stateless and requires the [isChecked] and [onChecked]
/// parameters to be provided.
class CustomCheckBox extends StatelessWidget {
  /// Creates a [CustomCheckBox].
  ///
  /// The [isChecked] and [onChecked] parameters must not be null.
  const CustomCheckBox({
    super.key,
    required this.isChecked,
    required this.onChecked,
  });

  /// Whether the checkbox is checked.
  final bool isChecked;

  /// Called when the checkbox is tapped.
  ///
  /// The new checked state is passed to the callback.
  final ValueChanged<bool> onChecked;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChecked(!isChecked);
      },
      child: AnimatedContainer(
        width: 24,
        height: 24,
        duration: const Duration(milliseconds: 100),
        decoration: ShapeDecoration(
          color: isChecked ? AppColors.primaryColor : Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
                width: 1.50,
                color:
                    isChecked ? Colors.transparent : const Color(0xFFDCDEDE)),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: isChecked
            ? Icon(
                Icons.check,
                color: Colors.white,
              )
            : const SizedBox(),
      ),
    );
  }
}
