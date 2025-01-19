import 'package:firebase_storage/firebase_storage.dart';
import 'package:fruits_hub_dash_board/core/services/storage_service.dart';

class FireStorage implements StorageService {
  final storageRef = FirebaseStorage.instance.ref();

  @override
  Future<String> uploadFile(String file) {
    // TODO: implement uploadFile
    throw UnimplementedError();
  }
}
