import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:short_cart_app/components/coffee_tile.dart';
import 'package:short_cart_app/model/coffee.dart';
import 'package:short_cart_app/model/coffee_provider.dart';

class cartpage extends StatefulWidget {
  const cartpage({Key? key}) : super(key: key);

  @override
  State<cartpage> createState() => _cartpageState();
}

class _cartpageState extends State<cartpage> {
  // remove items

  void removeFromcart(coffee coffee) {
    Provider.of<Coffeeshop>(context, listen: false).removeItemFromCart(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Coffeeshop>(
        builder: (context, value, child) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Text(
                      'You cart',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                        child: ListView.builder(
                      itemCount: value.usercart.length,
                      itemBuilder: (context, index) {
                        coffee eachcoffee = value.usercart[index];

                        return coffeetile(
                            Coffee: eachcoffee,
                            onPressed: () => removeFromcart(eachcoffee),
                            icon: Icon(Icons.delete));
                      },
                    ))
                  ],
                ),
              ),
            ));
  }
}
