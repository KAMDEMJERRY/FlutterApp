import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MyHomePage(title: "Hello World demo app");
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      decoration:  BoxDecoration(
        color: Colors.white,
      ),
      child: Center(
          child: Text(
              'Hello World',
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.black,
                      letterSpacing: 0.5,
                      fontSize: 20,              
              ),
          ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(0.1)),
        border: Border(
          top: BorderSide(width: 1.0, color: Colors.deepOrange),
          left: BorderSide(width: 1.0, color: Colors.deepOrange),
          right: BorderSide(width: 1.0, color: Color.fromRGBO(1, 1, 1, 1)),
          bottom: BorderSide(width: 1.0, color: Colors.deepOrange),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(10.0),
          border: const Border(
            top: BorderSide(width: 1.0, color: Color.fromARGB(0, 12, 175, 126)),
            left: BorderSide(
              width: 1.0,
              color: Color.fromARGB(255, 233, 18, 18),
            ),
            right: BorderSide(
              width: 1.0,
              color: Color.fromARGB(255, 34, 32, 168),
            ),
            bottom: BorderSide(
              width: 1.0,
              color: Color.fromARGB(255, 243, 227, 6),
            ),
          ),
          color: Color.fromARGB(255, 221, 22, 105),
        ),
        child: Center(
          child: Text(
            'OK',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(255, 20, 20, 20),
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ),
    );
  }
}
