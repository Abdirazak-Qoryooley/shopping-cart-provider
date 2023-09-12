import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:short_cart_app/components/coffee_tile.dart';
import 'package:short_cart_app/model/coffee.dart';
import 'package:short_cart_app/model/coffee_provider.dart';

class shopepage extends StatefulWidget {
  const shopepage({Key? key}) : super(key: key);

  @override
  State<shopepage> createState() => _shopepageState();
}

class _shopepageState extends State<shopepage> {
  void addTocart(coffee coffee) {
    Provider.of<Coffeeshop>(context, listen: false).addItemToCart(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Coffeeshop>(
        builder: ((context, value, child) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Text(
                      'coffee nuucii u bahantahay',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: value.coffeeshop.length,
                          itemBuilder: ((context, index) {
                            coffee eachcoffee = value.coffeeshop[index];

                            return coffeetile(
                              Coffee: eachcoffee,
                              icon: Icon(Icons.add),
                              onPressed: () => addTocart(eachcoffee),
                            );
                          })),
                    )
                  ],
                ),
              ),
            )));
  }
}
