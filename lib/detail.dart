import 'package:flutter/material.dart';
import 'package:untitled3/modles/car.dart';
import 'package:untitled3/utils.dart';

class Detail extends StatelessWidget {
  final String name;
  final String phone;
  final String product;
  final double price;
  final String path;

  Detail({
    required this.name,
    required this.phone,
    required this.product,
    required this.price,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 56, 77, 232),
        // ignore: deprecated_member_use
        actions: [
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.bookmark,
                size: 30,
                color: Colors.white,
              )),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.share,
              size: 30,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(children: [
        Image.asset(path),
        Row(children: [
          Container(
            child: Text(
              'name',
              style: MainHeading,
            ),
          ),
          Container(
            child: Text(
              name,
              style: MainHeading,
            ),
          ),
        ]),
        Text(product, style: SubHeading),
      ]),
    );
  }
}
