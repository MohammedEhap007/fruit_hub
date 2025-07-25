import 'package:bloc/bloc.dart';
import 'package:fruit_hub_app/core/entities/product_entity.dart';
import 'package:fruit_hub_app/core/repos/product_repo/products_repo.dart';
import 'package:meta/meta.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this.productsRepo) : super(ProductsInitial());
  final ProductsRepo productsRepo;
  int productsLength = 0;
  bool isAllProductsLoaded = false;
  bool isBestSellingProductsLoaded = false;

  Future<void> getProducts() async {
    if (isAllProductsLoaded) return;
    emit(ProductsLoading());
    final result = await productsRepo.getProducts();
    isAllProductsLoaded = true;
    result.fold((failure) => emit(ProductsFailure(failure.message)),
        (products) {
      productsLength = products.length;
      emit(ProductsSuccess(products));
    });
  }

  Future<void> getBestSellingProducts() async {
    if (isBestSellingProductsLoaded) return;
    emit(ProductsLoading());
    final result = await productsRepo.getBestSellingProducts();
    isBestSellingProductsLoaded = true;
    result.fold(
      (failure) => emit(ProductsFailure(failure.message)),
      (products) {
        emit(ProductsSuccess(products));
      },
    );
  }
}
