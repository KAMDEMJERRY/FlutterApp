import 'package:flutter/material.dart';
import 'package:informel/product.dart';
import 'package:informel/rating_box.dart';

class ProductPage extends StatelessWidget {
  final Product item;

  const ProductPage({super.key, required this.item});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item.name), backgroundColor: Colors.blue,),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset("assets/appimages/${item.image}", scale: 0.1),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        item.name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(item.description),
                      Text("Price: ${item.price}"),
                      RatingBox(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
