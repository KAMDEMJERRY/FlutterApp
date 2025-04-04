import 'package:flutter/material.dart';
import 'package:informel/product.dart';
import 'package:informel/product_box.dart';

void main() => runApp(MyApp());

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
  MyHomePage({super.key, required this.title});

  final String title;
  final items = Product.getProducts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('product Navigation')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ProductBox(item: items[index]);
        },
      ),
    );
  }
}
