import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_dashboard/core/repos/add_product_repo/add_product_repo.dart';
import 'package:fruits_hub_dashboard/core/repos/images_repo/images_repo.dart';
import 'package:fruits_hub_dashboard/features/add_product/domain/entities/product_entity.dart';
part 'add_product_state.dart';

class AddProductCubit extends Cubit<AddProductState> {
  AddProductCubit(
    this.imagesRepo,
    this.addProductRepo,
  ) : super(AddProductInitial());
  final ImagesRepo imagesRepo;
  final AddProductRepo addProductRepo;

  Future<void> addProduct(ProductEntity addProductInputEntity) async {
    emit(AddProductLoading());
    var result = await imagesRepo.uploadImage(addProductInputEntity.image);

    result.fold((f) {
      emit(AddProductFailure(f.message));
    }, (url) async {
      addProductInputEntity.imageUrl = url;
      var result = await addProductRepo.addProduct(addProductInputEntity);

      result.fold((f) {
        emit(AddProductFailure(f.message));
      }, (r) {
        emit(AddProductSuccess());
      });
    });
  }
}
