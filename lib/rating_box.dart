// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

class RatingBox extends StatefulWidget {
  const RatingBox({super.key});

  @override
  State<StatefulWidget> createState() {
    return _RatingBoxState();
  }
}

class _RatingBoxState extends State<RatingBox> {
  int _rating = 0;

    void _setRatinAsOne() {
    setState(() {
      _rating = 1;
    });
  }

  void _setRatingAsTwo() {
    setState(() {
      _rating = 2;
    });
  }

  void _setRatingAsThree() {
    setState(() {
      _rating = 3;
    });
  }


  @override
  Widget build(BuildContext context) {
    double _size = 20;
    print(_rating);

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon:
                (_rating >= 1
                    ? Icon(Icons.star, size: _size)
                    : Icon(Icons.star_border, size: _size)),
            color: Colors.red[500],
            iconSize: _size,
            onPressed: _setRatinAsOne,
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon:
                (_rating >= 2
                    ? Icon(Icons.star, size: _size)
                    : Icon(Icons.star_border, size: _size)),
            color: Colors.red[500],
            iconSize: _size,
            onPressed: _setRatingAsTwo,
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon:
                (_rating >= 3
                    ? Icon(Icons.star, size: _size)
                    : Icon(Icons.star_border, size: _size)),
            color: Colors.red[500],
            iconSize: _size,
            onPressed: _setRatingAsThree,
          ),
        ),
      ],
    );
  }

}
