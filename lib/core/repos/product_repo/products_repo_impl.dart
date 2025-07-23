import 'package:dartz/dartz.dart';
import 'package:fruit_hub_app/core/entities/product_entity.dart';
import 'package:fruit_hub_app/core/errors/failures.dart';
import 'package:fruit_hub_app/core/models/product_model.dart';
import 'package:fruit_hub_app/core/repos/product_repo/products_repo.dart';
import 'package:fruit_hub_app/core/services/database_service.dart';
import 'package:fruit_hub_app/core/utils/backend_endpoint.dart';

class ProductsRepoImpl extends ProductsRepo {
  final DatabaseService databaseService;

  ProductsRepoImpl(this.databaseService);

  @override
  Future<Either<Failure, List<ProductEntity>>> getProducts() async {
    try {
      var data = await databaseService.getData(
          path: BackendEndpoint.getProducts) as List<Map<String, dynamic>>;

      List<ProductEntity> products = data
          .map((product) => ProductModel.fromJson(product).toEntity())
          .toList();
      return Right(products);
    } catch (e) {
      return Left(ServerFailure('Failed to get products'));
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getBestSellingProducts() async {
    try {
      var data = await databaseService
          .getData(path: BackendEndpoint.getProducts, query: {
        'limit': 12,
        'orderBy': 'sellingCount',
        'descending': true,
      }) as List<Map<String, dynamic>>;

      List<ProductEntity> products = data
          .map((product) => ProductModel.fromJson(product).toEntity())
          .toList();
      return Right(products);
    } catch (e) {
      return Left(ServerFailure('Failed to get products'));
    }
  }
}
