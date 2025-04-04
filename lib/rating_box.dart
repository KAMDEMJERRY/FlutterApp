// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:informel/product.dart';

class RatingBox extends StatelessWidget {
  const RatingBox({super.key, required this.item});

  final Product item;

  @override
  Widget build(BuildContext context) {
    double _size = 20;
    print(item.rating);

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon:
                (item.rating >= 1
                    ? Icon(Icons.star, size: _size)
                    : Icon(Icons.star_border, size: _size)),
            color: Colors.red[500],
            iconSize: _size,
            onPressed: () => {item.updateRating(1)},
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon:
                (item.rating >= 2
                    ? Icon(Icons.star, size: _size)
                    : Icon(Icons.star_border, size: _size)),
            color: Colors.red[500],
            iconSize: _size,
            onPressed: () => {item.updateRating(2)},
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon:
                (item.rating >= 3
                    ? Icon(Icons.star, size: _size)
                    : Icon(Icons.star_border, size: _size)),
            color: Colors.red[500],
            iconSize: _size,
            onPressed: () => {item.updateRating(3)},
          ),
        ),
      ],
    );
  }
}
