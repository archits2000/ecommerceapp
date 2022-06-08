import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Products extends StatelessWidget {
  final String name;
  final String imgLink;
  final double price;
  Products(@required this.name,@required this.imgLink,@required this.price);
  @override
  Widget build(BuildContext context){
    return Container(
      height: 500,
      decoration: BoxDecoration(color:Colors.white),
      child: Column(children:[
        Text(name,style: TextStyle(color: Colors.black),),
        Image(image:AssetImage(imgLink)),
        Text('Price: €${price}',style: TextStyle(color:Colors.black),)
      ])
    );
  }
}