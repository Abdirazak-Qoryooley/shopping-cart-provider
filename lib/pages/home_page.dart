import 'package:flutter/material.dart';
import 'package:short_cart_app/components/bottom_navbar.dart';
import 'package:short_cart_app/cons.dart';
import 'package:short_cart_app/pages/cart_page.dart';
import 'package:short_cart_app/pages/shop_page.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int _seleclted = 0;

  void mynaviagtionbottom(int index) {
    setState(() {
      _seleclted = index;
    });
  }

  final List<Widget> _pages = [shopepage(), cartpage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: mybottomnav(
        onTabChange: ((index) => mynaviagtionbottom(index)),
      ),
      body: _pages[_seleclted],
    );
  }
}
