import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:short_cart_app/model/coffee_provider.dart';
import 'package:short_cart_app/pages/home_page.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Coffeeshop(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: homepage(),
      ),
    );
  }
}
