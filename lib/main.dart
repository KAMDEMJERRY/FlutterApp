import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: [
          ProductBox(
                    name: "iPhone", 
                    description: "iPhone is the stylist phone ever", 
                    price: 1000,
                    image: "iPhone.png",
          ),
          ProductBox(
                    name: "Pixel",
                    description: "Pixel is the most featured phone ever",
                    price: 1000, 
                    image: "Pixel.png"
          ),
          ProductBox(
            name: "Laptop",
            description: "Laptop is most productive development tool",
            price: 2000,
            image: "Laptop.png"
          ),
          ProductBox(
            name: "Tablet",
            description: "Tablet is the most useful device ever for meeting",
            price: 1500,
            image: "Tablet.png"
          ),
          ProductBox(
          name: "Pendrive",
          description: "Pendrive is useful storage medium",
          price: 100,
          image: "Pendrive.png"),
          ProductBox(
          name: "Floppy Drive",
          description: "Floppy drive is useful rescue storage medium",
          price: 20,
          image: "Floppy.png"),
        ],
      ),
    );
  }
}






class ProductBox extends StatelessWidget {
  const ProductBox({
    super.key,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });

  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/appimages/$image"),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(description),
                    Text("Price : $price"),
                  ],
                ),
              ),
            ),
          ], 
        ),
      ),
    );
  }
}
