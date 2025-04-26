class Product {
  final String name;
  final String imageUrl;
  final double price;
  final String weight;

  Product(
      {required this.name,
      required this.imageUrl,
      required this.price,
      required this.weight});
  static List<Product> sampleProducts() {
    return [
      Product(
          name: "Tomatoes",
          price: 25,
          imageUrl: "assets/products/tomatoes.jpg",
          weight: "1kg"),
      Product(
          name: "Potatoes",
          price: 18,
          imageUrl: "assets/products/potatoes.jpg",
          weight: "1kg"),
      Product(
          name: "Carrots",
          price: 30,
          imageUrl: "assets/products/carrots.jpg",
          weight: "500g"),
      Product(
          name: "Bananas",
          price: 40,
          imageUrl: "assets/products/bananas.jpg",
          weight: "1 dozen"),
      Product(
          name: "Apples",
          price: 99,
          imageUrl: "assets/products/apples.jpg",
          weight: "1kg"),
      Product(
          name: "Onions",
          price: 20,
          imageUrl: "assets/products/onions.jpg",
          weight: "1kg"),
      Product(
          name: "Milk",
          price: 50,
          imageUrl: "assets/products/milk.jpg",
          weight: "1L"),
      Product(
          name: "Bread",
          price: 35,
          imageUrl: "assets/products/bread.jpg",
          weight: "400g"),
      Product(
          name: "Eggs",
          price: 60,
          imageUrl: "assets/products/eggs.jpg",
          weight: "12 pcs"),
      Product(
          name: "Rice",
          price: 70,
          imageUrl: "assets/products/rice.jpg",
          weight: "1kg"),
      Product(
          name: "Sugar",
          price: 45,
          imageUrl: "assets/products/sugar.jpg",
          weight: "1kg"),
      Product(
          name: "Salt",
          price: 15,
          imageUrl: "assets/products/salt.jpg",
          weight: "1kg"),
      Product(
          name: "Butter",
          price: 55,
          imageUrl: "assets/products/butter.jpg",
          weight: "100g"),
      Product(
          name: "Cheese",
          price: 90,
          imageUrl: "assets/products/cheese.jpg",
          weight: "200g"),
      Product(
          name: "Yogurt",
          price: 35,
          imageUrl: "assets/products/yogurt.jpg",
          weight: "400g"),
      Product(
          name: "Orange",
          price: 75,
          imageUrl: "assets/products/oranges.jpg",
          weight: "1kg"),
      Product(
          name: "Grapes",
          price: 85,
          imageUrl: "assets/products/grapes.jpg",
          weight: "500g"),
      Product(
          name: "Mangoes",
          price: 120,
          imageUrl: "assets/products/mangoes.jpg",
          weight: "1kg"),
      Product(
          name: "Cabbage",
          price: 22,
          imageUrl: "assets/products/cabbage.jpg",
          weight: "1pc"),
      Product(
          name: "Cauliflower",
          price: 28,
          imageUrl: "assets/products/cauliflower.jpg",
          weight: "1pc"),
      Product(
          name: "Broccoli",
          price: 60,
          imageUrl: "assets/products/broccoli.jpg",
          weight: "250g"),
      Product(
          name: "Peas",
          price: 55,
          imageUrl: "assets/products/peas.jpg",
          weight: "500g"),
      Product(
          name: "Cucumber",
          price: 30,
          imageUrl: "assets/products/cucumber.jpg",
          weight: "500g"),
      Product(
          name: "Lettuce",
          price: 40,
          imageUrl: "assets/products/lettuce.jpg",
          weight: "1pc"),
      Product(
          name: "Paneer",
          price: 80,
          imageUrl: "assets/products/paneer.jpg",
          weight: "200g"),
      Product(
          name: "Spinach",
          price: 35,
          imageUrl: "assets/products/spinach.jpg",
          weight: "1 bunch"),
      Product(
          name: "Green Beans",
          price: 50,
          imageUrl: "assets/products/greenbeans.jpg",
          weight: "500g"),
      Product(
          name: "Chilies",
          price: 20,
          imageUrl: "assets/products/chillies.jpg",
          weight: "250g"),
      Product(
          name: "Garlic",
          price: 60,
          imageUrl: "assets/products/garlic.jpg",
          weight: "250g"),
      Product(
          name: "Ginger",
          price: 70,
          imageUrl: "assets/products/ginger.jpg",
          weight: "250g"),
      Product(
          name: "Corn",
          price: 45,
          imageUrl: "assets/products/corn.jpg",
          weight: "2 pcs"),
    ];
  }
}
