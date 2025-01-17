import 'package:flutter/material.dart';

class ImageField extends StatelessWidget {
  const ImageField({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {
      
    },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Icon(
          Icons.image_outlined,
          size: 180,
        ),
      ),
    );
  }
}
