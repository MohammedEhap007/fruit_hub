import 'package:bloc/bloc.dart';
import 'package:fruit_hub_app/core/entities/product_entity.dart';
import 'package:fruit_hub_app/features/home/domain/entities/cart_entity.dart';
import 'package:fruit_hub_app/features/home/domain/entities/cart_item_entity.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  CartEntity cartEntity = CartEntity([]);

  void addProduct(ProductEntity productEntity) {
    bool isProductExist = cartEntity.isExist(productEntity);
    CartItemEntity cartItemEntity = cartEntity.getCartItem(productEntity);
    if (isProductExist) {
      // Increment the count of the existing cart item
      cartItemEntity.count++;
    } else {
      cartEntity.addCartItem(cartItemEntity);
    }
    emit(CartItemAdded());
  }

  void removeCartItem(CartItemEntity cartItemEntity) {
    cartEntity.removeCartItem(cartItemEntity);
    emit(CartItemRemoved());
  }
}
