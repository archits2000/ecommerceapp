import 'package:flutter/material.dart';
import './Products.dart';

class ProductDetails extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _ProductDetails();
  }
}
class _ProductDetails extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width : MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color:Colors.white),
      child:Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Product Details'),
              elevation: 0.0,
        ),
        body: Column( children : [Products('T-shirt','assets/tate-logo-black--tshirt-back-g1086.jpg',67.0),
          ElevatedButton(onPressed: null, child: Text('Buy Now',style: TextStyle(color:Colors.black),),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.redAccent)),),
          ElevatedButton(onPressed: null, child:Text('Add to Cart',style: TextStyle(color:Colors.black),),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.redAccent)),),
        ]
      )
    ));
  }
}