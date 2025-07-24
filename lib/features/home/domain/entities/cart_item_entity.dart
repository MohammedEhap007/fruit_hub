import 'package:fruit_hub_app/core/entities/product_entity.dart';

class CartItemEntity {
  final ProductEntity productEntity;
  int count;

  CartItemEntity({
    required this.productEntity,
    this.count = 0,
  });

  num calculateTotalPrice() {
    return productEntity.price * count;
  }

  int incrementCount() {
    return count++;
  }

  int decrementCount() {
    return count--;
  }
}
