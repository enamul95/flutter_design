import 'package:flutter/material.dart';
import 'package:flutter_design/sliverappbar/my_appbar.dart';
import 'package:flutter_design/sliverappbar/myflexibale_app_bar.dart';
import 'package:flutter_design/sliverappbar/persistent_header.dart';
import 'package:flutter_design/sliverappbar/resturant_persitance_header.dart';
import 'package:flutter_design/util/mycolor.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';

class SliverAppBarDesign3 extends StatefulWidget {
  @override
  _SliverAppBarSate createState() => _SliverAppBarSate();
}

class _SliverAppBarSate extends State<SliverAppBarDesign3> {
  List<double> data1 = [1.0, 1.1, 1.0, 1.2, 1.3, 1.3, 1.3, 1.3];
  List<double> data2 = [0.8, 0.7, 1.0, 0.9, 0.2, 1.3, 1.6, 0.8, 0.3, 0.0];
  List<double> data3 = [1.0, 1.1, 1.0, 0.9, 1.2, 1.2, 1.3, 1.4];
  List<double> data4 = [0.4, 0.5, 0.6, 1.0, 1.0, 0.9, 0.6, 0.5];
  List<double> data5 = [1.0, 1.1, 1.0, 0.9, 1.2, 1.3, 0.8, 1, 2];
  List<double> data6 = [0.8, 0.9, 0.7, 0.6, 0.8, 0.9];
  List<double> data7 = [0.2, 0.3, 0.6, 1.0, 0.6, 0.3, 0.2];
  List<double> data8 = [1.0, 1.1, 1.2, 1.3, 1.4, 1.2, 1.3];
  List<double> data9 = [1.0, 1.1, 1.0, 0.9, 1.2, 1.3, 1.0, 0.8, 1.3, 1.0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: MyAppBar(),
            pinned: false,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Barbieri_-_ViaSophia25668.jpg/800px-Barbieri_-_ViaSophia25668.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          // SliverAppBar(
          //     // title: Text("App bar"),
          //     ),
          // //162832
          restuantSliverPersistentHeader(),
          SliverPersistentHeader(
            pinned: true,
            delegate: PersistentHeader(
              widget: Row(
                children: <Widget>[
                 
                ],
              ),
            ),
          ),
          /*
          SliverAppBar(
            backgroundColor: Colors.white,
            centerTitle: false,
            pinned: true,
            forceElevated: true,
            floating: true,
            expandedHeight: 200,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dosa Bhai Donia, Dhaka 11",
                  style: TextStyle(color: Colors.amber),
                ),
                Text("From Deserts. cold Beverages. Juice..",
                    style: TextStyle(color: Colors.amber)),
              ],
            ),
            

            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Dosa Bhai Donia, Dhaka 11",
                      style: TextStyle(color: Colors.amber),
                    ),
                    Text("From Deserts. cold Beverages. Juice..",
                        style: TextStyle(color: Colors.amber)),
                    OutlinedButton.icon(
                      icon: Icon(Icons.star_outline),
                      label: Text("OutlinedButton"),
                      onPressed: () => print("it's pressed"),
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(width: 2.0, color: Colors.blue),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

          ),
          */
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                myCardDetails("images/bitcoin.png", "Bitcoin", data1, "4702",
                    "3.0", "\u2191", 0xff07862b),
                myCardDetails("images/bitshares.png", "Bitshares", data2,
                    "3802", "4.0", "\u2193", 0xffff0000),
                myCardDetails("images/ethereum.png", "Ethereum", data3, "7702",
                    "5.0", "\u2191", 0xff07862b),
                myCardDetails("images/counterparty.png", "Counterpaty", data7,
                    "4702", "3.0", "\u2193", 0xffff0000),
                myCardDetails("images/lykke.png", "Lykke", data5, "8600", "2.0",
                    "\u2191", 0xff07862b),
                myCardDetails("images/peercoin.png", "Peercoin", data6, "4702",
                    "2.5", "\u2191", 0xff07862b),
                myCardDetails("images/zcash.png", "Zcash", data4, "2345", "2.0",
                    "\u2193", 0xffff0000),
                myCardDetails("images/singular.png", "Singular", data8, "3800",
                    "2.5", "\u2191", 0xffff0000),
                myCardDetails("images/litecoin.png", "Litecoin", data9, "2000",
                    "3.0", "\u2193", 0xffff0000),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SliverPersistentHeader restuantSliverPersistentHeader() {
    return SliverPersistentHeader(
          pinned: false,
          delegate: ResturantPersistentHeader(
            widget: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Dosa Bhai Donia, Dhaka 11",
                    style: TextStyle(
                        color: black_color,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text("From Deserts. cold Beverages. Juice..",
                        style: TextStyle(color: gray_color, fontSize: 15)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: OutlinedButton.icon(
                      icon: Icon(Icons.delivery_dining),
                      label: Text(
                        "Home Delivary",
                        style: TextStyle(
                            color: black_color,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () => print("it's pressed"),
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(width: 1.0, color: grey_20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  "*",
                                  style: TextStyle(
                                    color: star_color,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "4.00",
                                    style: TextStyle(
                                      color: black_color,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Text(
                              "28 Reviews",
                              style: TextStyle(
                                color: grey_700,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        Container(
                            height: 30,
                            child: VerticalDivider(color: grey_20)),
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  "BDT",
                                  style: TextStyle(
                                    color: black_color,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "40",
                                    style: TextStyle(
                                      color: black_color,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Text(
                              "Delivery",
                              style: TextStyle(
                                color: gray_color,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        Container(
                            height: 30,
                            child: VerticalDivider(color: grey_20)),
                        Column(
                          children: <Widget>[
                            Text(
                              "30-40",
                              style: TextStyle(
                                color: black_color,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "Minutes",
                              style: TextStyle(
                                color: gray_color,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
  }
}

Widget myCardDetails(
    String imageVal,
    String currencyName,
    List<double> data,
    String currencyVal,
    String currencyPercentage,
    String currencyStatus,
    int colorVal) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Material(
      color: Colors.white,
      elevation: 14.0,
      borderRadius: BorderRadius.circular(24.0),
      shadowColor: Color(0x802196F3),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: myCurrencies(imageVal, currencyName, data, currencyVal,
            currencyPercentage, currencyStatus, colorVal),
      ),
    ),
  );
}

Center myCurrencies(
    String imageVal,
    String currencyName,
    List<double> data,
    String currencyVal,
    String currencyPercentage,
    String currencyStatus,
    int colorVal) {
  return Center(
      child: Column(
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          myLeadingDetails(imageVal, currencyName),
          myGraphDetails(data),
          myCurrenciesDetails(
              currencyVal, currencyPercentage, currencyStatus, colorVal),
        ],
      )
    ],
  ));
}

Widget myLeadingDetails(String imageVal, String currencyName) {
  return Container(
      child: Row(
    children: <Widget>[
      Container(
        child: Image(
          height: 50.0,
          image: AssetImage(imageVal),
        ),
      ),
      SizedBox(
        width: 10.0,
      ),
      Container(
        child: Text(
          currencyName,
          style: TextStyle(
              color: Color(0xff3a2483),
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              fontSize: 16.0),
        ),
      ),
    ],
  ));
}

Widget myGraphDetails(List<double> data) {
  return Container(
    width: 80.0,
    height: 50.0,
    child: Sparkline(
      data: data,
      lineColor: Color(0xff013db7),
      fillMode: FillMode.below,
      fillColor: Colors.blue[100],
    ),
  );
}

Widget myCurrenciesDetails(String currencyVal, String currencyPercentage,
    String currencyStatus, int colorVal) {
  return Container(
      child: Column(
    children: <Widget>[
      Container(
        child: Text("\u0024" + currencyVal,
            style: TextStyle(
                color: Color(0xff3a2483),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w800,
                fontSize: 20.0)),
      ),
      Container(
        child: Text(currencyPercentage + "\u0025\u0020" + currencyStatus,
            style: TextStyle(
              color: Color(colorVal),
              fontFamily: 'Poppins',
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            )),
      ),
    ],
  ));
}
