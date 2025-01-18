import 'package:flutter/material.dart';
import 'package:fruits_hub_dash_board/core/utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.textInputType,
    this.suffixIcon,
    this.onSaved,
    this.obscureText = false,
    this.maxLines,
  });
  final bool obscureText;
  final String hintText;
  final TextInputType textInputType;
  final Widget? suffixIcon;
  final void Function(String?)? onSaved;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      obscureText: obscureText,
      onSaved: onSaved,
      validator: (value) {
        if (value!.isEmpty) {
          return 'This field is required';
        }
        return null;
      },
      keyboardType: textInputType,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintStyle:
            TextStyles.regular13.copyWith(color: const Color(0xff949d9e)),
        hintText: hintText,
        filled: true,
        fillColor: const Color(0xfff9fafa),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(
        width: 1,
        color: Color(0xffe6e9e9),
      ),
    );
  }
}
