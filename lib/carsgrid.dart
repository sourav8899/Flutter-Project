import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3/detail.dart';
import 'package:untitled3/modles/car.dart';
import 'package:untitled3/utils.dart';

class Carsgrid extends StatelessWidget {
  const Carsgrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var str = "";
    final style = TextStyle(fontSize: 23);
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: allCars.cars.length,
      itemBuilder: (ctx, i) => Container(
        padding: EdgeInsets.all(9),
        width: 60,
        height: 5,
        decoration: BoxDecoration(
            color: Colors.purple, borderRadius: BorderRadius.circular(20)),
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
                decoration: BoxDecoration(border: Border.all(width: 3)),
                child: Image.asset(
                  allCars.cars[i].path,
                  height: 100,
                  alignment: Alignment.topLeft,
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Name:',
                      style: GoogleFonts.lato(
                        textStyle: style,
                        fontSize: 12,
                      )),
                  Text(allCars.cars[i].name,
                      style: GoogleFonts.lato(
                        textStyle: style,
                        fontSize: 12,
                      )),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: Text('Price: Rs.',
                        style: GoogleFonts.lato(
                          textStyle: style,
                          fontSize: 12,
                        )),
                  ),
                  Container(
                      child: Text((allCars.cars[i].price).toString(),
                          style: GoogleFonts.lato(
                            textStyle: style,
                            fontSize: 12,
                          ))),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: Text('Product:',
                        style: GoogleFonts.lato(
                          textStyle: style,
                          fontSize: 12,
                        )),
                  ),
                  Container(
                    child: Text(allCars.cars[i].product,
                        style: GoogleFonts.lato(
                          textStyle: style,
                          fontSize: 12,
                        )),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    child: Text('Contact No:',
                        style: GoogleFonts.lato(
                          textStyle: style,
                          fontSize: 12,
                        )),
                  ),
                  Container(
                    child: Text(allCars.cars[i].phone,
                        style: GoogleFonts.lato(
                          textStyle: style,
                          fontSize: 12,
                        )),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 6),
    );
  }
}
