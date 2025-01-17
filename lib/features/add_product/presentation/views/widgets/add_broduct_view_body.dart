import 'package:flutter/material.dart';
import 'package:fruits_hub_dash_board/core/widgets/custom_text_form_field.dart';
import 'package:fruits_hub_dash_board/features/add_product/presentation/views/widgets/image_field.dart';

class AddBroductViewBody extends StatefulWidget {
  const AddBroductViewBody({super.key});

  @override
  State<AddBroductViewBody> createState() => _AddBroductViewBodyState();
}

class _AddBroductViewBodyState extends State<AddBroductViewBody> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _autoValidate = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        autovalidateMode: _autoValidate,
        child: Column(
          spacing: 16,
          children: [
            CustomTextFormField(
              hintText: 'Product Name',
              textInputType: TextInputType.text,
            ),
            CustomTextFormField(
              hintText: 'Product Price',
              textInputType: TextInputType.number,
            ),
            CustomTextFormField(
              hintText: 'Product Code',
              textInputType: TextInputType.text,
            ),
            CustomTextFormField(
              maxLines: 5,
              hintText: 'Product Description',
              textInputType: TextInputType.text,
            ),
            ImageField(),
          ],
        ),
      ),
    );
  }
}
