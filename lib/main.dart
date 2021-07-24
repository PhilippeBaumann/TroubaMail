import 'package:flutter/material.dart';
import 'package:gmail_clone/ui/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trouba Mail Client',
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.black
      ),
      home: HomeScreen(),
    );
  }
}
