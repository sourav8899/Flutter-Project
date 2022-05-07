import 'package:flutter/material.dart';
import 'package:untitled3/cars.dart';
import 'package:untitled3/sell.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/zondicons.dart'; // for Non Colorful Icons
import 'package:colorful_iconify_flutter/icons/emojione.dart';

class BottomMenu extends StatefulWidget {
  const BottomMenu({Key? key}) : super(key: key);

  @override
  State<BottomMenu> createState() {
    return _BottomMenuState();
  }
}

class _BottomMenuState extends State<BottomMenu> {
  int select = 0;
  var pages = [Cars(), servicepage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 56, 77, 232),
        title: Text(
          'Buy And Sell',
          style: TextStyle(color: Color.fromARGB(255, 239, 239, 245)),
        ),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Center(child: pages[select]),
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart), label: "buy"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_checkout_sharp), label: "sell"),
        ],
        currentIndex: select,
        onTap: (setValue) {
          setState(() {
            select = setValue;
          });
        },
      ),
    );
  }
}
