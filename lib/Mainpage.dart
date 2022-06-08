import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled1/HomeScreen.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:untitled1/ProductPage.dart';

class Mainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget image_caraousal() {
      return Container(
          height: 300,
          child: new Carousel(
            images: [
              AssetImage('assets/ZxA_header.webp'),
              AssetImage('assets/Safety-Precautions-1-.jpg'),
              AssetImage('assets/iphone-13-color-lineup.webp'),
              AssetImage('assets/cute summer outfits 2022.webp'),
              AssetImage('assets/header-makeup-bg.jpg')
            ],
            autoplay: false,
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(milliseconds: 1000),
            boxFit: BoxFit.cover,
            dotSize: 4.0,
            indicatorBgPadding: 4.0,
          ));
    }

    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text('Main Page'),
              centerTitle: true,
              actions: <Widget>[
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.shopping_cart, color: Colors.white),
                )
              ],
            ),
            drawer: Drawer(
              child: ListView(
                children: [
                  UserAccountsDrawerHeader(
                    accountName: Text('architsharma'),
                    accountEmail: Text('architsharma925@gmail.com'),
                    currentAccountPicture: GestureDetector(
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Icon(
                          Icons.person,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: null,
                    child: ListTile(
                      title: Text('HomePage'),
                      leading: Icon(
                        Icons.home,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: null,
                    child: ListTile(
                      title: Text('My Account'),
                      leading: Icon(
                        Icons.person,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: null,
                    child: ListTile(
                      title: Text('My Orders'),
                      leading: Icon(
                        Icons.shopping_basket_outlined,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: null,
                    child: ListTile(
                      title: Text('Favourites'),
                      leading: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: null,
                    child: ListTile(
                      title: Text('Settings'),
                      leading: Icon(
                        Icons.settings,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen())),
                    child: ListTile(
                      title: Text('Log Out'),
                      leading: Icon(
                        Icons.logout,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            body:  Column(
              children: [ Container( height: 323,
                  child: Expanded(
                  flex: 1,
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children : [
                image_caraousal(),
                Container( height : 25,
                  child: Text('CATEGORIES',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                  decoration: BoxDecoration(
                    color: Colors.black
                  ),

                )]))),
                Expanded(child: ListView( children : [
                Row(
                  children: [
                    Container(
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: TextButton(
                              onPressed: () => Navigator.push(context,
                              MaterialPageRoute(builder: (context) => ProductDetails())),
                              child: Text(
                                'Pharmacy',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ))),
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.30,
                      padding: EdgeInsets.only(left: 0, top: 0),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          image: DecorationImage(
                              image: AssetImage('assets/kindpng_904149.png'))),
                    ),
                    Container(
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: TextButton(
                              onPressed: () => Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => ProductDetails())),
                              child: Text(
                                'Appliances',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ))),
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.30,
                      padding: EdgeInsets.only(right: 0, top: 0),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/pngfind.com-home-appliances-png-3687326(1).png'))),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: TextButton(
                              onPressed: () => Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => ProductDetails())),
                              child: Text(
                                'Electronics',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ))),
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.30,
                      padding: EdgeInsets.only(left: 0),
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/[CITYPNG.COM]HD White Round Circle Modern Smartphone Icon Transparent PNG - 2000x2000.png'))),
                    ),
                    Container(
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: TextButton(
                              onPressed: () => Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => ProductDetails())),
                              child: Text(
                                'Books',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ))),
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.30,
                      padding: EdgeInsets.only(right: 0),
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/toppng.com-books-logo-1489798288-clipart-of-books-467x397.png'))),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: TextButton(
                              onPressed: () => Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => ProductDetails())),
                              child: Text(
                                'Clothing',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ))),
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.2926,
                      padding: EdgeInsets.only(left: 0),
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/imgbin_clothing-computer-icons-fashion-dry-cleaning-dress-code-png.png'))),
                    ),
                    Container(
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: TextButton(
                              onPressed: () => Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => ProductDetails())),
                              child: Text(
                                'Furniture',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ))),
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.2926,
                      padding: EdgeInsets.only(right: 0),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/favpng_text-furniture-line-logo-font.png'))),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: TextButton(
                              onPressed: () => Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => ProductDetails())),
                              child: Text(
                                'Cosmetics',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ))),
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.2926,
                      padding: EdgeInsets.only(left: 0),
                      decoration: BoxDecoration(
                          color: Colors.brown,
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/pngaaa.com-1529499.png'))),
                    ),
                    Container(
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: TextButton(
                              onPressed: () => Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => ProductDetails())),
                              child: Text(
                                'Grocery',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ))),
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.2926,
                      padding: EdgeInsets.only(right: 0),
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/favpng_grocery-store-biryani-supermarket-food-farmers-market.png'))),
                    )
                  ],
                ),
              ],
            ))])));
  }
}
