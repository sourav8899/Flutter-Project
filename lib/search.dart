import 'package:flutter/material.dart';
class Searchd extends StatelessWidget {
  const Searchd({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    
             child: Flexible(
                child: TextField(
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                  fillColor: Colors.grey,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'search bar',
                  ),
            )),
          
    );
  }
}