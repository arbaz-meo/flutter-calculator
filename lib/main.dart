import 'package:flutter/material.dart';
import 'homepage.dart';
void main()
{
  runApp(new myapp());
      
}
class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
    title: "calculatorapp",
      theme: new ThemeData(
        primarySwatch: Colors.red
      ),
      home: homepage(),
    );
  }
}
