
class Product{
  final String name;
  final String description;
  final int price;
  final String image;

  Product(this.name, this.description, this.price, this.image);

  static List<Product> getProducts() {
    List<Product> items = <Product>[];
    items.add(
      Product(
        "Pixel",
        "Pixel is the most feature-full phone ever",
        800,
        "Pixel.png",
      
      ),
    );
    items.add(
      Product(
        "Laptop",
        "Laptop is most productive development tool",
        2000,
        "Laptop.png",
      
      ),
    );
    items.add(
      Product(
        "Tablet",
        "Tablet is the most useful device ever for meeting",
        1500,
        "Tablet.png",
      
      ),
    );
    items.add(
      Product(
        "Pendrive",
        "Pendrive is useful storage medium",
        100,
        "Pendrive.png",
        
      ),
    );
    items.add(
      Product(
        "Floppy Drive",
        "Floppy drive is useful rescue storage medium",
        20,
        "Floppy.png",
      ),
    );
    return items;
  }
}
