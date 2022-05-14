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
    var text2 = '';
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
            Container(height: size.height * 0.25, child: Image.asset(path)),
            SizedBox(
                height: size.height,
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: size.height * 0.005),
                      height: 1000,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24))),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(140, 20, 0, 0),
                      child: Text(
                        product,
                        style: GoogleFonts.lora(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(size.height * 0.30, 92, 0, 0),
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Price: ₹",
                              style: GoogleFonts.nunito(
                                  textStyle: style,
                                  fontSize: 20,
                                  color: Colors.black87)),
                          TextSpan(
                              text: price.toString(),
                              style: GoogleFonts.nunito(
                                  textStyle: style,
                                  fontSize: 20,
                                  color: Colors.black87)),
                        ]),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 90, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Name:",
                                  style: GoogleFonts.nunito(
                                      textStyle: style,
                                      fontSize: 25,
                                      color: Colors.black87)),
                              TextSpan(
                                  text: name,
                                  style: GoogleFonts.nunito(
                                      textStyle: style,
                                      fontSize: 25,
                                      color: Colors.black87)),
                            ]),
                          ),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Contact:",
                                  style: GoogleFonts.nunito(
                                      textStyle: style,
                                      fontSize: 25,
                                      color: Colors.black87)),
                              TextSpan(
                                  text: phone,
                                  style: GoogleFonts.nunito(
                                      textStyle: style,
                                      fontSize: 25,
                                      color: Colors.black87)),
                            ]),
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Text(
                                  "Description",
                                  style: GoogleFonts.lora(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                              ),
                              Container(
                                child: Text(
                                    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ))
          ]),
        ));
  }
}
