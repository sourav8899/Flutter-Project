class Item {
  final String name;
  final double price;
  final String path;
  final String phone;
  final String product;

  Item({
    required this.name,
    required this.price,
    required this.path,
    required this.phone,
    required this.product,
  });

  get title => null;
}

ItemList allCars = ItemList(cars: [
  Item(
      name: 'sourav',
      price: 150,
      phone: '889992799',
      path: 'assets/2.jpg',
      product: 'Notes'),
  Item(
      name: 'rohit',
      price: 450,
      phone: '6644484866',
      path: 'assets/1.jpg',
      product: 'kettle'),
  Item(
      name: 'anurag',
      price: 100,
      phone: '9858649564',
      path: 'assets/3.jpg',
      product: 'printer'),
]);

class ItemList {
  List<Item> cars;

  ItemList({required this.cars});
}
