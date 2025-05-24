import 'package:fruits_hub_dashboard/core/repos/add_product_repo/add_product_repo.dart';
import 'package:fruits_hub_dashboard/core/repos/add_product_repo/add_product_repo_impl.dart';
import 'package:fruits_hub_dashboard/core/repos/images_repo/images_repo.dart';
import 'package:fruits_hub_dashboard/core/repos/images_repo/images_repo_impl.dart';
import 'package:fruits_hub_dashboard/core/services/data_service.dart';
import 'package:fruits_hub_dashboard/core/services/firestore_service.dart';
import 'package:fruits_hub_dashboard/core/services/storage_service.dart';
import 'package:fruits_hub_dashboard/core/services/supabase_storage.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;
void setUpGetIt() {
  getit.registerSingleton<StorageService>(SupabaseStorage());
  getit.registerSingleton<ImagesRepo>(ImagesRepoImpl(getit<StorageService>()));
  getit.registerSingleton<DatabaseService>(FirestoreService());
  getit.registerSingleton<AddProductRepo>(
      AddProductRepoImpl(getit<DatabaseService>()));
}
