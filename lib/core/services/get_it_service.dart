import 'package:fruits_hub_dashboard/core/services/storage_service.dart';
import 'package:fruits_hub_dashboard/core/services/supabase_storage.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;
void setUpGetIt() {
  getit.registerSingleton<StorageService>(SupabaseStorage());
}
