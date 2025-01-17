import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ImageField extends StatefulWidget {
  const ImageField({
    super.key,
    required this.onFileChange,
  });
  final ValueChanged<File?> onFileChange;
  @override
  State<ImageField> createState() => _ImageFieldState();
}

class _ImageFieldState extends State<ImageField> {
  bool isLoading = false;
  File? fileImage;
  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: isLoading,
      child: GestureDetector(
        onTap: () async {
          isLoading = true;
          setState(() {});
          try {
            await pickImage();
          } on Exception catch (e) {
            isLoading = false;
            setState(() {});
          }
          isLoading = false;
          setState(() {});
        },
        child: Stack(children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: fileImage != null
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.file(fileImage!))
                : Icon(
                    Icons.image_outlined,
                    size: 180,
                  ),
          ),
          Visibility(
            visible: fileImage != null,
            child: IconButton(
              onPressed: () {
                fileImage = null;
                widget.onFileChange(fileImage);
                setState(() {});
              },
              icon: Icon(
                Icons.close,
                color: Colors.red,
              ),
            ),
          )
        ]),
      ),
    );
  }

  Future<void> pickImage() async {
    final ImagePicker picker = ImagePicker();

    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      fileImage = File(image.path);
      widget.onFileChange(fileImage!);
    }
  }
}
