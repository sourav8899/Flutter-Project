import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/icons/ls.dart';
import 'package:iconify_flutter/icons/ps.dart';
import 'package:untitled3/detail.dart';
import 'package:untitled3/modles/itemdata.dart';
import 'package:untitled3/utils.dart';

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
            color: Color.fromARGB(255, 255, 255, 255),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Image.asset(
                  allCars.cars[i].path,
                  height: 100,
                  width: 110,
                  alignment: Alignment.topLeft,
                  fit: BoxFit.fill,
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
              Row(
                children: [
                  Container(
                    child: Text('Price: Rs.',
                        style: GoogleFonts.lato(
                          textStyle: style,
                          fontSize: 15,
                        )),
                  ),
                  Container(
                      child: Text((allCars.cars[i].price).toString(),
                          style: GoogleFonts.lato(
                            textStyle: style,
                            fontSize: 15,
                          ))),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: Text('Product:',
                        style: GoogleFonts.lato(
                          textStyle: style,
                          fontSize: 15,
                        )),
                  ),
                  Container(
                    child: Text(allCars.cars[i].product,
                        style: GoogleFonts.lato(
                          textStyle: style,
                          fontSize: 15,
                        )),
                  )
                ],
              ),
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
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 6,
        childAspectRatio: 1,
      ),
    );
  }
}
