import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class mybottomnav extends StatelessWidget {
  void Function(int)? onTabChange;
  mybottomnav({required, this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: GNav(
          onTabChange: (((value) => onTabChange!(value))),
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 24,
          color: Colors.grey[100],
          tabBackgroundColor: Colors.grey.shade300,
          activeColor: Colors.grey[700],
          tabActiveBorder: Border.all(color: Colors.white),
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
              iconColor: Colors.black,
            ),
            GButton(
              icon: Icons.shopify_sharp,
              text: 'Shop',
              iconColor: Colors.black,
            ),
          ]),
    );
  }
}
