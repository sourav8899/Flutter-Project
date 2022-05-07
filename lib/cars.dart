import 'package:flutter/material.dart';

import 'package:untitled3/carsgrid.dart';
import 'package:untitled3/sell.dart';
import 'package:untitled3/utils.dart';

class Cars extends StatelessWidget {
  const Cars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Container(
              child: Carsgrid(),
            ),
          )
        ],
      ),
    );
  }
}
