import 'dart:io';

abstract class ImagesRepo {
  Future<void> uploadImage(File image);
}
