// ignore: file_names
import 'package:dota_store_23/models/product_model.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  List<String> menus = [
    "All",
    //"Menu 1",
    //"Menu 2",
    //"Menu 3",
    //"Menu 4",
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(241, 244, 247, 1.0),
      appBar: AppBar(
        elevation: 5.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        // ignore: prefer_const_constructors
        title: Text(
          "DOTA PLUS STORE",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const Image(
            image: AssetImage("assets/dota.png"),
            width: 32.0,
          ),
          SizedBox(width: 15.0),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20.0),
            width: double.infinity,
            height: 40.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: menus.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 100.0,
                  margin: EdgeInsets.only(left: 15.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: index== 0?Colors.black: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      ),
                  child: Text(
                    menus[index],
                    style: TextStyle(color: index== 0?Colors.white: Colors.black,fontWeight: FontWeight.bold),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
              width: double.infinity,
              child: GridView.builder(
                itemCount: products.length,
                // ignore: prefer_const_constructors
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15.0,
                  mainAxisSpacing: 15.0,
                ), 
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(10.0),  
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Column(
                      children: [
                        Image.asset(products[index].path??""),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Text(
                                  "S/. ${products[index].price.toString()}",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                                ),
                                Text(
                                  "${products[index].title}",
                                  style: TextStyle(fontSize: 12.0),
                                ),
                              ],
                            ),
                            FloatingActionButton.small(
                            onPressed: () {
                              Navigator.pushNamed(context, "carrito");
                            },
                            child: const Icon(Icons.shopping_cart_checkout_outlined),
                            ),
                            //Icon(Icons.shopping_cart_checkout_outlined),
                          ],
                        )
                      ],
                    )
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
