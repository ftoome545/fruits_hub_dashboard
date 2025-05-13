import 'dart:io';
import 'package:fruits_hub_dashboard/core/services/storage_service.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:path/path.dart' as p;

class SupabaseStorage implements StorageService {
  final supabase = Supabase.instance.client;
  @override
  Future<String> uploadFile(File file, String path) async {
    String fileName = p.basename(file.path);
    String extension = p.extension(file.path);

    await supabase.storage
        .from('files')
        .upload('$path/$fileName.$extension', file);

    var fileUrl = supabase.storage
        .from('files')
        .getPublicUrl('$path/$fileName.$extension');

    // var fileSignedUrl = supabase.storage
    //     .from('files')
    //     .createSignedUrl('$path/$fileName.$extension', 60);
    return fileUrl;
  }
}
