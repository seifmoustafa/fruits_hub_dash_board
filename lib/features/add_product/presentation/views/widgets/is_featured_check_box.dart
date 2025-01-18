import 'package:flutter/material.dart';
import 'package:fruits_hub_dash_board/core/utils/app_text_styles.dart';
import 'package:fruits_hub_dash_board/features/add_product/presentation/views/widgets/custom_check_box.dart';

class IsFeaturedCheckBox extends StatefulWidget {
  const IsFeaturedCheckBox({super.key, required this.onChecked});
  final ValueChanged<bool> onChecked;
  @override
  State<IsFeaturedCheckBox> createState() => _IsFeaturedCheckBoxState();
}

class _IsFeaturedCheckBoxState extends State<IsFeaturedCheckBox> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'is featured item?',
                    style: TextStyles.semiBold13.copyWith(
                      color: const Color(0xFF949D9E),
                    )),
              ],
            ),
            // textAlign: TextAlign.right,
          ),
        ),
        Expanded(
          child: const SizedBox(
              // width: 16,
              ),
        ),
        CustomCheckBox(
          onChecked: (value) {
            isTermsAccepted = value;
            widget.onChecked(value);
            setState(() {});
          },
          isChecked: isTermsAccepted,
        ),
      ],
    );
  }
}
