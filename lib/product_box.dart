import 'package:flutter/material.dart';
import 'package:informel/product.dart';
import 'package:scoped_model/scoped_model.dart';
import 'rating_box.dart';

class ProductBox extends StatelessWidget {
  const ProductBox({super.key, required this.item});

  final Product item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 140,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/appimages/${item.image}"),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: ScopedModel<Product>(
                  model: item,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        item.name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(item.description),
                      Text("Price: ${item.price}"),
                      ScopedModelDescendant<Product>(
                        builder: (context, child, item) {
                          return RatingBox(item: item);
                        },
                      ),
                    ],
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
