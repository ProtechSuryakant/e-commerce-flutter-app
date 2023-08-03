class Item {
  final String image;
  final String title;
  final String description;
  final String price;
  final String discount;

  Item(
      {required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.discount});
}

final List<Item> itemsData = [
  Item(
    image: 'assets/images/shoes2.png',
    title: 'Asian Shoes',
    description: 'Causal Shoes',
    price: '650',
    discount: '-55%',
  ),
  Item(
    image: 'assets/images/shirt3.jpg',
    title: 'Cotton Men Shirt',
    description: 'The shirt can be worn for both formal and casual occasions.',
    price: '550',
    discount: '-20%',
  ),
  Item(
    image: 'assets/images/mobile.jpg',
    title: 'iPhone 11',
    description: 'Iphone 11 with 256 Rom',
    price: '32399',
    discount: '-30%',
  ),
  Item(
    image: 'assets/images/oppomobile.jpg',
    title: 'Oppo Reno 8',
    description:
        'Oppo Reno 8 is powered by an octa-core MediaTek Dimension 1300 processor',
    price: '26,999',
    discount: '-20%',
  ),
  Item(
    image: 'assets/images/iphone14.png',
    title: 'iphone14',
    description: 'With the most impressive dual-camera system on iPhone.',
    price: '550',
    discount: '-10%',
  ),
  Item(
    image: 'assets/images/mobile_vivo.jpg',
    title: 'Vivo V25 Pro',
    description:
        'Vivo V25 Pro features a 6.56-inches AMOLED touchscreen with a curved design.',
    price: '27,990',
    discount: '-30%',
  ),
  Item(
    image: 'assets/images/shoes.png',
    title: 'Asian Shoes',
    description:
        'Asian shoes is a good brand. Asian shoes have a wide range of collections.',
    price: '699',
    discount: '-20%',
  ),
];
