// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3/modles/itemdata.dart';
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
  final style = TextStyle(fontSize: 23);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            SizedBox(
                height: size.height,
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: size.height * 0.3),
                      height: 500,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 253, 253, 253),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24))),
                    ),
                    Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.all(20),
                            child: Text(
                              product,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            )),
                     Row(
                       children: [
                         RichText(text: 
                         TextSpan(text: "price")),
                         TextSpan(text: price)
                       ],
                     )
                      ],
                    )
                  ],
                ))
          ]),
        ));
  }
}
