import 'package:bloc/bloc.dart';
import 'package:fruit_hub_app/features/home/domain/entities/cart_entity.dart';
import 'package:fruit_hub_app/features/home/domain/entities/cart_item_entity.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  CartEntity cartEntity = CartEntity([]);

  void addCartItem(CartItemEntity cartItemEntity) {
    cartEntity.addCartItem(cartItemEntity);
    emit(CartItemAdded());
  }
}
