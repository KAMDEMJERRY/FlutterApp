import 'package:flutter/material.dart';
import './product_box.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Product state demo home page'),
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
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            ProductBox(
              name: "iPhone",
              description: "iPhone is the stylist phone ever",
              price: 1000,
              image: "iPhone.png"
            ),
            ProductBox(
              name: "Pixel",
              description: "Pixel is the most featureful phone ever",
              price: 800,
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
              description: "Tablet is the most useful device ever formeeting",
              price: 1500,
              image: "Tablet.png"
            ),
            ProductBox(
              name: "Pendrive",
              description: "iPhone is the stylist phone ever",
              price: 100,
              image: "Pendrive.png"
            ),
            ProductBox(
              name: "Floppy Drive",
              description: "iPhone is the stylist phone ever",
              price: 20,
              image: "Floppy.png"
            ),
            ProductBox(
              name: "iPhone",
              description: "iPhone is the stylist phone ever",
              price: 1000,
              image: "iPhone.png"
            ),
            ProductBox(
              name: "iPhone",
              description: "iPhone is the stylist phone ever",
              price: 1000,
              image: "iPhone.png"
            ),
          ],
      ),
    );
  }
}

