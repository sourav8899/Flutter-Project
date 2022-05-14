import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/icons/ls.dart';
import 'package:iconify_flutter/icons/ps.dart';
import 'package:untitled3/detail.dart';
import 'package:untitled3/modles/itemdata.dart';
import 'package:untitled3/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class grid extends StatelessWidget {
  const grid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var str = "";
    final style = TextStyle(fontSize: 23);
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: allCars.cars.length,
      itemBuilder: (ctx, i) => Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 238, 241, 240),
            borderRadius: BorderRadius.circular(20)),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => Detail(
                      name: allCars.cars[i].name,
                      phone: allCars.cars[i].phone,
                      path: allCars.cars[i].path,
                      product: allCars.cars[i].product,
                      price: allCars.cars[i].price,
                    )));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                allCars.cars[i].path,
                height: 130,
                width: 110,
                alignment: Alignment.topLeft,
                fit: BoxFit.fill,
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(30, 7, 0, 0),
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Product:",
                            style: GoogleFonts.poppins(
                                textStyle: style,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87)),
                        TextSpan(
                            text: allCars.cars[i].product.toString(),
                            style: GoogleFonts.poppins(
                                textStyle: style,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87)),
                      ]),
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Contact Name:",
                            style: GoogleFonts.nunito(
                                textStyle: style,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87)),
                        TextSpan(
                            text: allCars.cars[i].name.toString(),
                            style: GoogleFonts.nunito(
                                textStyle: style,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87)),
                      ]),
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Price:",
                            style: GoogleFonts.nunito(
                                textStyle: style,
                                fontSize: 18,
                                color: Colors.black87)),
                        TextSpan(
                            text: allCars.cars[i].price.toString(),
                            style: GoogleFonts.nunito(
                                textStyle: style,
                                fontSize: 18,
                                color: Colors.black87)),
                      ]),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(140, 0, 0, 0),
                      child: ElevatedButton(
                        onPressed: () async {
                          final phonee = allCars.cars[i].phone;
                          final Uri launchUri = Uri(
                            scheme: 'tel',
                            path: phonee,
                          );
                          await launchUrl(launchUri);
                        },
                        child: Text(
                          'contact',
                          style: TextStyle(color: Colors.black87),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white54,
                            padding: EdgeInsets.all(10)),
                      ),
                    )
                  ],
                ),
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     Text('Name:',
              //         style: GoogleFonts.lato(
              //           textStyle: style,
              //           fontSize: 15,
              //         )),
              //     Text(allCars.cars[i].name,
              //         style: GoogleFonts.lato(
              //           textStyle: style,
              //           fontSize: 15,
              //         )),
              //   ],
              // ),

              // Row(
              //   children: [
              //     Container(
              //       child: Text('Contact No:',
              //           style: GoogleFonts.lato(
              //             textStyle: style,
              //             fontSize: 15,
              //           )),
              //     ),
              //     Container(
              //       child: Text(allCars.cars[i].phone,
              //           style: GoogleFonts.lato(
              //             textStyle: style,
              //             fontSize: 15,
              //           )),
              //     )
              //   ],
              // ),
            ],
          ),
        ),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 2.33,
      ),
    );
  }
}
