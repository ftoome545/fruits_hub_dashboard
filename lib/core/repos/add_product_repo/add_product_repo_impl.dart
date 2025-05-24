import 'package:dartz/dartz.dart';
import 'package:fruits_hub_dashboard/core/errors/failures.dart';
import 'package:fruits_hub_dashboard/core/repos/add_product_repo/add_product_repo.dart';
import 'package:fruits_hub_dashboard/core/services/data_service.dart';
import 'package:fruits_hub_dashboard/core/utils/backend_endpoint.dart';
import 'package:fruits_hub_dashboard/features/add_product/domain/entities/product_entity.dart';
import 'package:fruits_hub_dashboard/features/add_product/models/product_model.dart';

class AddProductRepoImpl implements AddProductRepo {
  final DatabaseService databaseService;

  AddProductRepoImpl(this.databaseService);
  @override
  Future<Either<Failures, void>> addProduct(
      ProductEntity addProductInputEntity) async {
    try {
      await databaseService.addData(
          path: BackendEndpoint.addProduct,
          data: ProductModel.fromEntity(addProductInputEntity).toJson());
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure('Failed to add product'));
    }
  }
}
