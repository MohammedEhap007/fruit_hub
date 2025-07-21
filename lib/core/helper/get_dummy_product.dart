import 'package:fruit_hub_app/core/entities/product_entity.dart';

ProductEntity getDummyProduct() {
  return ProductEntity(
    name: 'Dummy Product',
    description: 'This is a dummy product.',
    price: 9.99,
    imageUrl:
        'https://image.made-in-china.com/2f0j00uAvTaFrnABcD/High-Quality-Real-Touch-Artificial-Fake-Fruits-for-Party-Decoration.webp',
    code: 'DUMMY001',
    isFeatured: false,
    expirationMonths: 12,
    isOrganic: true,
    numberOfCalories: 100,
    unitAmount: 1,
    reviews: [],
  );
}

List<ProductEntity> getDummyProducts({required int count}) {
  return List.generate(count, (index) => getDummyProduct());
}
