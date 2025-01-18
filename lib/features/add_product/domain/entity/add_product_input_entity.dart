import 'dart:io';

class AddProductInputEntity {
  final String name;
  final double price;
  final String code;
  final bool isFeatured;
  final String description;
  final File fileImage;
  final String? imageUrl;

  AddProductInputEntity(
      {required this.name,
      required this.price,
      required this.code,
      required this.isFeatured,
      required this.description,
      required this.fileImage,
      required this.imageUrl});
}
