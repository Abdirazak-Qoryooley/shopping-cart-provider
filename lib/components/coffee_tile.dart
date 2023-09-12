import 'package:flutter/material.dart';
import 'package:short_cart_app/model/coffee.dart';

class coffeetile extends StatelessWidget {
  final coffee Coffee;
  void Function()? onPressed;
  final Widget icon;
  coffeetile(
      {super.key,
      required this.Coffee,
      required this.onPressed,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      margin: EdgeInsets.only(bottom: 5),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: ListTile(
        title: Text(Coffee.name),
        subtitle: Text(Coffee.price),
        leading: Image.asset(Coffee.imagepath),
        trailing: IconButton(
          icon: icon,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
