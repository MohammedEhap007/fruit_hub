import 'package:flutter/material.dart';
import 'package:fruit_hub_app/core/entities/product_entity.dart';
import 'package:fruit_hub_app/core/widgets/fruit_item.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({super.key, required this.products, this.productsLimit});
  final List<ProductEntity> products;
  final int? productsLimit;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: productsLimit ?? products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 163 / 214,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 16.0,
      ),
      itemBuilder: (context, index) => FruitItem(
        productEntity: products[index],
      ),
    );
  }
}
