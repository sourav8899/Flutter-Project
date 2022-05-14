import 'package:flutter/material.dart';
import 'package:untitled3/item.dart';
import 'package:untitled3/sell.dart';

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
        backgroundColor: Colors.blue,
        title: Text('Buy And Sell',style: TextStyle(color: Color.fromARGB(255, 239, 239, 245)),),
        elevation: 0,
        actions: [IconButton(icon: Icon(Icons.search),onPressed: () {},)],
      ),
      body: Center(child: pages[select]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart), label: "Buy",backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_checkout_sharp), label: "Sell",backgroundColor: Colors.blue),
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
