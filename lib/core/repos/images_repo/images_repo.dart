import 'dart:io';
import 'package:dartz/dartz.dart';


abstract class ImagesRepo {
  Future<Either<String, String>> uploadImage(File path);
}
