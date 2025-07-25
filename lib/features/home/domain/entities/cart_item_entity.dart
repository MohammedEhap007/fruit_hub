import 'package:equatable/equatable.dart';
import 'package:fruit_hub_app/core/entities/product_entity.dart';

class CartItemEntity extends Equatable {
  final ProductEntity productEntity;
  int quantity;

  CartItemEntity({
    required this.productEntity,
    this.quantity = 0,
  });

  num calculateTotalPrice() {
    return productEntity.price * quantity;
  }

  int incrementQuantity() {
    return quantity++;
  }

  int decrementQuantity() {
    return quantity--;
  }

  @override
  List<Object?> get props => [productEntity];
}
