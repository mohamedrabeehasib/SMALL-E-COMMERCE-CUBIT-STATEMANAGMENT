class Product {
  final String name;
  final String description;
  final String image;
  final double price;

  Product(
      {required this.name,
      required this.description,
      required this.image,
      required this.price});
}

List<Product> products = [
  Product(
      name: "Product 1",
      description: "Item deccription",
      image: "assets/hear.jpg",
      price: 22),
  Product(
      name: "Product 2",
      description: "Item deccription",
      image: "assets/shors.jpg",
      price: 22),
  Product(
      name: "Product 3",
      description: "Item deccription",
      image: "assets/watch.jpg",
      price: 22),
  Product(
      name: "Product 4",
      description: "Item description",
      image: "assets/glass.jpg",
      price: 22),
];



