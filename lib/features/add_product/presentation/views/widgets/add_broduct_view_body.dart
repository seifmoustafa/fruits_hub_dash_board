import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fruits_hub_dash_board/core/widgets/custom_button.dart';
import 'package:fruits_hub_dash_board/core/widgets/custom_text_form_field.dart';
import 'package:fruits_hub_dash_board/core/helper_functions/custom_top_snack_bar.dart';
import 'package:fruits_hub_dash_board/features/add_product/presentation/views/widgets/image_field.dart';
import 'package:fruits_hub_dash_board/features/add_product/presentation/views/widgets/is_featured_check_box.dart';

class AddBroductViewBody extends StatefulWidget {
  const AddBroductViewBody({super.key});

  @override
  State<AddBroductViewBody> createState() => _AddBroductViewBodyState();
}

class _AddBroductViewBodyState extends State<AddBroductViewBody> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  var _autoValidate = AutovalidateMode.disabled;
  late String name, code, discription;
  late num price;
  File? image;
  late bool isFeatured;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          autovalidateMode: _autoValidate,
          child: Column(
            spacing: 16,
            children: [
              CustomTextFormField(
                onSaved: (value) {
                  name = value!;
                },
                hintText: 'Product Name',
                textInputType: TextInputType.text,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  price = double.parse(value!);
                },
                hintText: 'Product Price',
                textInputType: TextInputType.number,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  code = value!.toLowerCase();
                },
                hintText: 'Product Code',
                textInputType: TextInputType.text,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  discription = value!;
                },
                maxLines: 5,
                hintText: 'Product Description',
                textInputType: TextInputType.text,
              ),
              IsFeaturedCheckBox(
                onChecked: (value) {
                  isFeatured = value;
                },
              ),
              ImageField(
                onFileChange: (image) {
                  this.image = image;
                },
              ),
              SizedBox(),
              CustomButton(
                  onPressed: () {
                    if (image != null) {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        customSuccessTopSnackBar(
                            context: context,
                            message: "Product added successfully");
                      } else {
                        _autoValidate = AutovalidateMode.always;
                        setState(() {});
                      }
                    } else {
                      customErrorTopSnackBar(
                          context: context, message: "Please select an image");
                    }
                  },
                  text: "Add Product"),
              SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
