class ProductDetailDummyModel {
  final String? name;
  final String? image;
  final String? mac;
  final String? model;

  ProductDetailDummyModel({this.name, this.image, this.mac, this.model});
}

class ProductDummy {
  static final List<ProductDetailDummyModel> detail = [
    ProductDetailDummyModel(
      name: 'Fırın',
      image: 'assets/images/fırın.png',
      mac: '1543596170724',
      model: 'Vestel',
    ),
    ProductDetailDummyModel(
      name: 'Lamba',
      image: 'assets/images/lamba.png',
      mac: '8718696170724',
      model: 'Philips',
    ),
  ];
}
